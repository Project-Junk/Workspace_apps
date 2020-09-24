.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;
.super Ljava/lang/Object;
.source "VerticalTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordsSplitWatch"
.end annotation


# static fields
.field public static final TYPE_CH:I = 0x0

.field public static final TYPE_EMOJI:I = 0x3

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_SPACE:I = 0x1

.field public static final TYPE_UNKOWN:I = -0x1


# instance fields
.field private index:I

.field private mWatchString:Ljava/lang/String;

.field private nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;",
            ">;"
        }
    .end annotation
.end field

.field private startX:I

.field private stopX:I

.field private wordType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 681
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;)I
    .locals 0

    .line 674
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    return p0
.end method


# virtual methods
.method public getWordType(C)I
    .locals 0

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x4e00

    if-lt p1, p0, :cond_1

    const p0, 0x9fa5

    if-gt p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4

    .line 708
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->startX:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    const/4 v0, -0x1

    .line 709
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    .line 711
    :goto_0
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 712
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;

    .line 713
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->mWatchString:Ljava/lang/String;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 715
    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->isEmoji()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    .line 718
    :cond_0
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->getWordType(C)I

    move-result v2

    .line 721
    :goto_1
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    if-eq v3, v2, :cond_1

    if-eq v3, v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 725
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    .line 726
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    .line 727
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    goto :goto_2

    .line 730
    :cond_2
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->wordType:I

    .line 731
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    .line 732
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader$Node;->getLength()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    goto :goto_0

    .line 736
    :cond_3
    :goto_2
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->startX:I

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    .line 739
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->mWatchString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_3
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->startX:I

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    .line 686
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->mWatchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 687
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->startX:I

    .line 688
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->stopX:I

    .line 689
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->index:I

    .line 690
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 694
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nodeList:Ljava/util/List;

    sget-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->analyzeText(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
