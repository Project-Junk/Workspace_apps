.class public final Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;
.super Ljava/lang/Object;
.source "PrivacyDialogBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialogBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialogBuilder.kt\ncom/coloros/systemui/qs/privacy/PrivacyDialogBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,57:1\n1309#2:58\n1378#2,3:59\n1309#2:62\n1378#2,3:63\n1309#2:66\n1378#2,3:67\n1252#2:70\n1282#2,3:71\n1285#2,3:81\n1309#2:84\n1378#2,3:85\n305#3,7:74\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDialogBuilder.kt\ncom/coloros/systemui/qs/privacy/PrivacyDialogBuilder\n*L\n37#1:58\n37#1,3:59\n40#1:62\n40#1,3:63\n53#1:66\n53#1,3:67\n29#1:70\n29#1,3:71\n29#1,3:81\n33#1:84\n33#1,3:85\n29#1,7:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u00150\u00150\u0005J\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00052\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005J\u0006\u0010\u0017\u001a\u00020\u000fJ\u001c\u0010\u0018\u001a\u00060\u0019j\u0002`\u001a\"\u0004\u0008\u0000\u0010\u001b*\u0008\u0012\u0004\u0012\u0002H\u001b0\u0005H\u0002R)\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00050\t0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;",
        "",
        "context",
        "Landroid/content/Context;",
        "itemsList",
        "",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "appsAndTypes",
        "Lkotlin/Pair;",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        "getAppsAndTypes",
        "()Ljava/util/List;",
        "lastSeparator",
        "",
        "kotlin.jvm.PlatformType",
        "separator",
        "types",
        "getTypes",
        "generateIcons",
        "Landroid/graphics/drawable/Drawable;",
        "generateIconsForApp",
        "joinTypes",
        "joinWithAnd",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "T",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final appsAndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final lastSeparator:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    .line 25
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    const v0, 0x7f1105bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->separator:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    const v0, 0x7f1105b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->lastSeparator:Ljava/lang/String;

    .line 29
    check-cast p2, Ljava/lang/Iterable;

    .line 70
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 71
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    .line 29
    invoke-virtual {v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->getApplication()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    move-result-object v2

    .line 74
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 29
    invoke-virtual {v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->getPrivacyType()Lcom/coloros/systemui/qs/privacy/PrivacyType;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    sget-object v2, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$3;->INSTANCE:Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget-object v2, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;->INSTANCE:Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    aput-object v2, v0, v1

    .line 31
    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->appsAndTypes:Ljava/util/List;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 85
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    .line 33
    invoke-virtual {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->getPrivacyType()Lcom/coloros/systemui/qs/privacy/PrivacyType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_2
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 33
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    return-void
.end method

.method private final joinWithAnd(Ljava/util/List;)Ljava/lang/StringBuilder;
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->separator:Ljava/lang/String;

    const-string v3, "separator"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->lastSeparator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public final generateIcons()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    check-cast v2, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    .line 40
    iget-object v3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/qs/privacy/PrivacyType;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final generateIconsForApp(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    check-cast v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    .line 37
    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/qs/privacy/PrivacyType;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAppsAndTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->appsAndTypes:Ljava/util/List;

    return-object p0
.end method

.method public final getTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    return-object p0
.end method

.method public final joinTypes()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    .line 53
    iget-object v3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/qs/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 53
    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->joinWithAnd(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "types.map { it.getName(c\u2026.joinWithAnd().toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->types:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "types[0].getName(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method
