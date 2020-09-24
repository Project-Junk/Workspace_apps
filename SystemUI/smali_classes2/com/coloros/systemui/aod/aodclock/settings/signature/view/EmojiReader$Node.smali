.class public final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;
.super Ljava/lang/Object;
.source "EmojiReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0003J7\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
        "",
        "startIndex",
        "",
        "length",
        "isEmoji",
        "",
        "codePoint",
        "",
        "(IIZLjava/util/List;)V",
        "getCodePoint",
        "()Ljava/util/List;",
        "()Z",
        "getLength",
        "()I",
        "getStartIndex",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final codePoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isEmoji:Z

.field private final length:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(IIZLjava/util/List;)V
    .locals 1
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "codePoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    iput-boolean p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    iput-object p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;IIZLjava/util/List;ILjava/lang/Object;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->copy(IIZLjava/util/List;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    return p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    return-object p0
.end method

.method public final copy(IIZLjava/util/List;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;
    .locals 0
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "codePoint"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;-><init>(IIZLjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    iget v3, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    iget v3, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    iget-boolean v3, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    iget-object p1, p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getCodePoint()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    .line 272
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    return p0
.end method

.method public final getStartIndex()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

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

    .line 273
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node(startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEmoji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", codePoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->codePoint:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
