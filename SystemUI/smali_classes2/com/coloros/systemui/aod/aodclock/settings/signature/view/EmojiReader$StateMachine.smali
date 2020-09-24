.class final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;
.super Ljava/lang/Object;
.source "EmojiReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiReader.kt\ncom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine\n*L\n1#1,276:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\r\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0011J\u0006\u0010\u0012\u001a\u00020\u0008J\u0006\u0010\u0013\u001a\u00020\u0008J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0008\u0010\u001a\u001a\u00020\u000eH\u0002J\u0008\u0010\u001b\u001a\u00020\u000eH\u0002J\u0018\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0008R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;",
        "",
        "()V",
        "charUnitList",
        "",
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;",
        "currentChar",
        "currentCodePoint",
        "",
        "currentIndex",
        "currentState",
        "emojiModifier",
        "",
        "assertEmoji",
        "",
        "endChar",
        "getCharList",
        "",
        "getCurrentCharSize",
        "getCurrentIndex",
        "isEmojiCodePoint",
        "",
        "codePoint",
        "isRegionalIndicator",
        "isSpecialSymbol",
        "maybeEmojiCodePoint",
        "moveToNext",
        "moveToPrev",
        "read",
        "str",
        "",
        "end",
        "Companion",
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
.field public static final Companion:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;

.field public static final Joiner:I = 0x200d

.field public static final ModifierBlack:I = 0xfe0e

.field public static final ModifierColorFul:I = 0xfe0f

.field public static final ModifierKeyCap:I = 0x20e3

.field private static final ModifierTagRange:Lkotlin/ranges/IntRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_EMOJI:I = 0x1

.field public static final STATE_EMOJI_JOIN:I = 0x10000

.field public static final STATE_EMOJI_MODIFIER:I = 0x1001

.field public static final STATE_NATIONAL_FLAG:I = 0x101

.field public static final STATE_PRE_EMOJI:I = 0x10


# instance fields
.field private final charUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;",
            ">;"
        }
    .end annotation
.end field

.field private currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

.field private currentCodePoint:I

.field private currentIndex:I

.field private currentState:I

.field private final emojiModifier:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->Companion:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine$Companion;

    .line 107
    new-instance v0, Lkotlin/ranges/IntRange;

    const v1, 0xe0020

    const v2, 0xe007f

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->ModifierTagRange:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 116
    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xfe0e

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0xfe0f

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x20e3

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 116
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->ModifierTagRange:Lkotlin/ranges/IntRange;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->emojiModifier:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->charUnitList:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;-><init>(IZLjava/util/Deque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    return-void
.end method

.method public static final synthetic access$getModifierTagRange$cp()Lkotlin/ranges/IntRange;
    .locals 1

    .line 100
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->ModifierTagRange:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method private final assertEmoji()V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->setEmoji(Z)V

    return-void
.end method

.method private final endChar()V
    .locals 8

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->charUnitList:Ljava/util/List;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;-><init>(IZLjava/util/Deque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    :cond_0
    return-void
.end method

.method private final isEmojiCodePoint(I)Z
    .locals 2

    const v0, 0x1f200

    if-gt v0, p1, :cond_0

    const v0, 0x1ffff

    if-ge v0, p1, :cond_2

    :cond_0
    const/16 v0, 0x2fff

    const/16 v1, 0x2500

    if-gt v1, p1, :cond_1

    if-ge v0, p1, :cond_2

    .line 250
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->isSpecialSymbol(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isRegionalIndicator(I)Z
    .locals 0

    const p0, 0x1f000

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x1f1ff

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final isSpecialSymbol(I)Z
    .locals 0

    const/16 p0, 0x3030

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xae

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2122

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final maybeEmojiCodePoint(I)Z
    .locals 0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x39

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final moveToNext()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 147
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    return-void
.end method

.method private final moveToPrev()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentChar:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->getCodePoint()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    const-string v2, "lastCodePoint"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    return-void
.end method

.method public static synthetic read$default(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;Ljava/lang/CharSequence;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->read(Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public final getCharList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->charUnitList:Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentCharSize()I
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->charUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getCurrentIndex()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    return p0
.end method

.method public final read(Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_d

    .line 159
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentIndex:I

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    .line 162
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    .line 163
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->isEmojiCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 165
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto/16 :goto_0

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToPrev()V

    .line 169
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x101

    if-ne v0, v3, :cond_4

    .line 173
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->isRegionalIndicator(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    .line 175
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->assertEmoji()V

    .line 176
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    goto/16 :goto_0

    .line 179
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->assertEmoji()V

    .line 180
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x1001

    const/16 v5, 0x10

    if-ne v0, v5, :cond_6

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->emojiModifier:Ljava/util/Set;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iput v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 186
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const/16 v0, 0x200d

    .line 193
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    if-ne v0, v3, :cond_7

    .line 194
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 195
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->emojiModifier:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    iput v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 199
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 202
    :cond_8
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->assertEmoji()V

    .line 203
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    goto :goto_0

    .line 207
    :cond_9
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->isRegionalIndicator(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 209
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 211
    :cond_a
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->maybeEmojiCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    iput v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 213
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 216
    :cond_b
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentCodePoint:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->isEmojiCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 217
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    .line 218
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    goto :goto_0

    .line 222
    :cond_c
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->moveToNext()V

    .line 223
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->getCurrentCharSize()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 233
    :cond_d
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->currentState:I

    if-eqz p1, :cond_f

    and-int/2addr p1, v2

    if-eqz p1, :cond_e

    .line 235
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->assertEmoji()V

    .line 237
    :cond_e
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$StateMachine;->endChar()V

    :cond_f
    return-void
.end method
