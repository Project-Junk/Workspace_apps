.class final Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EmojiReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->isEmojiOfCharIndex(Ljava/util/List;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "node",
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $idx:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;->$idx:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;)I
    .locals 2
    .param p1    # Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;->$idx:I

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->getStartIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;->$idx:I

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    if-lt p0, v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$isEmojiOfCharIndex$visionIdx$1;->invoke(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
