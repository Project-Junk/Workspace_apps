.class public final Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "HeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;,
        Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;,
        Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;
    }
.end annotation


# instance fields
.field final a:Lcom/coloros/settings/feature/weather/view/a;

.field b:I

.field c:Z

.field d:I

.field private final e:Landroid/content/Context;

.field private f:Landroid/database/DataSetObserver;

.field private g:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/weather/view/HeadersGridView;Lcom/coloros/settings/feature/weather/view/a;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    .line 58
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->f:Landroid/database/DataSetObserver;

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    .line 82
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->e:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    .line 84
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->f:Landroid/database/DataSetObserver;

    invoke-interface {p3, p1}, Lcom/coloros/settings/feature/weather/view/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;
    .locals 1

    .line 247
    check-cast p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;

    if-nez p1, :cond_0

    .line 249
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->e:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 252
    :cond_0
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)Z
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    return-object p0
.end method

.method private d(I)I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->a(I)I

    move-result p1

    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected final a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->a:I

    invoke-interface {v0, p1, p2}, Lcom/coloros/settings/feature/weather/view/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(I)J
    .locals 2

    .line 281
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->a:I

    int-to-long v0, p1

    return-wide v0
.end method

.method protected final c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 296
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1

    .line 298
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    invoke-direct {v0, p0, p1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object v0

    :cond_1
    move v3, p1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 307
    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v4, v2}, Lcom/coloros/settings/feature/weather/view/a;->a(I)I

    move-result v4

    if-nez p1, :cond_2

    .line 313
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    const/4 v0, -0x2

    invoke-direct {p1, p0, v0, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1

    .line 315
    :cond_2
    iget v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    sub-int/2addr p1, v5

    if-gez p1, :cond_3

    .line 318
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    const/4 v0, -0x3

    invoke-direct {p1, p0, v0, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1

    :cond_3
    sub-int/2addr v3, v5

    if-ge p1, v4, :cond_4

    .line 323
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    invoke-direct {p1, p0, v3, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1

    .line 327
    :cond_4
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v4, v5

    sub-int/2addr p1, v4

    if-gez p1, :cond_5

    .line 333
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_6
    new-instance p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;II)V

    return-object p1
.end method

.method public final getCount()I
    .locals 6

    .line 95
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v1}, Lcom/coloros/settings/feature/weather/view/a;->a()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    .line 102
    iput-boolean v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    .line 103
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    return v0

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 109
    iget v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v4, v0}, Lcom/coloros/settings/feature/weather/view/a;->a(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_2
    iput-boolean v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    .line 112
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    .line 131
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 142
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    .line 143
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 146
    :cond_0
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    .line 149
    :cond_1
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    const-wide/16 v0, -0x3

    return-wide v0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 157
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    .line 158
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 161
    :cond_0
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 164
    :cond_1
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_2

    const/4 p1, 0x2

    return p1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->getItemViewType(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 176
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    .line 177
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1259
    check-cast p2, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;

    if-nez p2, :cond_0

    .line 1261
    new-instance p2, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->e:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->a:I

    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    invoke-interface {v0, p1, p3}, Lcom/coloros/settings/feature/weather/view/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 180
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(Landroid/view/View;)V

    .line 181
    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {p3, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Landroid/view/View;)V

    .line 184
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->h:Landroid/view/View;

    goto :goto_0

    .line 185
    :cond_1
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->h:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(Landroid/view/View;Landroid/view/View;)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 188
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->i:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(Landroid/view/View;Landroid/view/View;)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/settings/feature/weather/view/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 191
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->i:Landroid/view/View;

    :goto_0
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/view/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2

    .line 221
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p1

    .line 222
    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    iget p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/weather/view/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
