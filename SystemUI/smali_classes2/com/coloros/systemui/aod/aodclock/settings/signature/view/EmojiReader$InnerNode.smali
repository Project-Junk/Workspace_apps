.class final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;
.super Ljava/lang/Object;
.source "EmojiReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;",
        "",
        "startIndex",
        "",
        "isEmoji",
        "",
        "codePoint",
        "Ljava/util/Deque;",
        "(IZLjava/util/Deque;)V",
        "getCodePoint",
        "()Ljava/util/Deque;",
        "()Z",
        "setEmoji",
        "(Z)V",
        "getStartIndex",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final codePoint:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isEmoji:Z

.field private final startIndex:I


# direct methods
.method public constructor <init>(IZLjava/util/Deque;)V
    .locals 1
    .param p3    # Ljava/util/Deque;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "codePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/util/Deque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 267
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    check-cast p3, Ljava/util/Deque;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;-><init>(IZLjava/util/Deque;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;IZLjava/util/Deque;ILjava/lang/Object;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->copy(IZLjava/util/Deque;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    return p0
.end method

.method public final component3()Ljava/util/Deque;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    return-object p0
.end method

.method public final copy(IZLjava/util/Deque;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;
    .locals 0
    .param p3    # Ljava/util/Deque;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "codePoint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;-><init>(IZLjava/util/Deque;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    iget v3, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    iget-boolean v3, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    iget-object p1, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getCodePoint()Ljava/util/Deque;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    return-object p0
.end method

.method public final getStartIndex()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isEmoji()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    return p0
.end method

.method public final setEmoji(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerNode(startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEmoji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->isEmoji:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", codePoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$InnerNode;->codePoint:Ljava/util/Deque;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
