.class public final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;
.super Ljava/lang/Object;
.source "EmojiReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;,
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;,
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiReader.kt\ncom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n92#1,7:287\n1309#2:277\n1378#2,2:278\n1527#2,3:280\n1380#2:283\n1527#2,3:284\n*E\n*S KotlinDebug\n*F\n+ 1 EmojiReader.kt\ncom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader\n*L\n85#1,7:287\n17#1:277\n17#1,2:278\n17#1,3:280\n17#1:283\n73#1,3:284\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0018\u0019\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\tJ\u001c\u0010\n\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000c\u001a\u00020\tJ\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\tJ\u001c\u0010\u000e\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000c\u001a\u00020\tJ\u0016\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tJ\u001e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00042\u0006\u0010\u0006\u001a\u00020\u0007J!\u0010\u0014\u001a\u00020\u0015*\u00020\u00072\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0017H\u0082\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;",
        "",
        "()V",
        "analyzeText",
        "",
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
        "str",
        "",
        "getTextLength",
        "",
        "isEmojiOfCharIndex",
        "",
        "idx",
        "nodeList",
        "isEmojiOfVisionIndex",
        "subSequence",
        "end",
        "start",
        "transToUnicode",
        "",
        "forEachCodePoint",
        "",
        "action",
        "Lkotlin/Function1;",
        "InnerNode",
        "Node",
        "StateMachine",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;-><init>()V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final forEachCodePoint(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 94
    invoke-static {p1, p0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final analyzeText(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 16
    invoke-static {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->read$default(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;Ljava/lang/CharSequence;IILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->getCharList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 277
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 278
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 279
    check-cast v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    .line 18
    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 281
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "code"

    .line 19
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 21
    :cond_0
    new-instance v2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getStartIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji()Z

    move-result v5

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v4, v3, v5, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;-><init>(IIZLjava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final getTextLength(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->read$default(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;Ljava/lang/CharSequence;IILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->getCurrentCharSize()I

    move-result p0

    return p0
.end method

.method public final isEmojiOfCharIndex(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->analyzeText(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->isEmojiOfCharIndex(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final isEmojiOfCharIndex(Ljava/util/List;I)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "nodeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;

    invoke-direct {v0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;-><init>(I)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->isEmojiOfVisionIndex(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final isEmojiOfVisionIndex(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->analyzeText(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->isEmojiOfVisionIndex(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final isEmojiOfVisionIndex(Ljava/util/List;I)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
            ">;I)Z"
        }
    .end annotation

    const-string p0, "nodeList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji()Z

    move-result p0

    return p0
.end method

.method public final subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x2e

    const-string v0, " and end = "

    const-string v1, "but actually start = "

    if-ltz p2, :cond_6

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p3, v2, :cond_6

    if-gt p2, p3, :cond_5

    const-string p0, ""

    if-ne p2, p3, :cond_0

    .line 64
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;-><init>()V

    add-int v1, p2, p3

    .line 67
    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->read(Ljava/lang/CharSequence;I)V

    .line 68
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->getCharList()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getStartIndex()I

    move-result p0

    add-int/lit8 p3, p3, -0x1

    .line 73
    invoke-static {v0, p3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getStartIndex()I

    move-result p3

    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 285
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "cp"

    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_3

    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_2
    return-object p0

    .line 71
    :cond_4
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The start index should be not bigger than end,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 52
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The index should be in range [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "],"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-direct {v2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final transToUnicode(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 288
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 289
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
