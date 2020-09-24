.class public Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
.super Ljava/lang/Object;
.source "ColorPagerGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColumns:I

.field private mItemHeight:I

.field private mOrientation:I

.field private mReverseLayout:Z

.field private mRows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 882
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mRows:I

    .line 883
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mColumns:I

    .line 885
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mOrientation:I

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mReverseLayout:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I
    .locals 0

    .line 881
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)Z
    .locals 0

    .line 881
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mReverseLayout:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I
    .locals 0

    .line 881
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mItemHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I
    .locals 0

    .line 881
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mColumns:I

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I
    .locals 0

    .line 881
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mRows:I

    return p0
.end method


# virtual methods
.method public build()Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;
    .locals 2

    .line 911
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$1;)V

    return-object v0
.end method

.method setItemHeightAndColumn(II)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 895
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mColumns:I

    .line 896
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mItemHeight:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$OrientationType;
        .end annotation
    .end param

    .line 901
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mOrientation:I

    return-object p0
.end method

.method public setReverseLayout(Z)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
    .locals 0

    .line 906
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mReverseLayout:Z

    return-object p0
.end method

.method setRowsAndColumns(II)Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 889
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mRows:I

    .line 890
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->mColumns:I

    return-object p0
.end method
