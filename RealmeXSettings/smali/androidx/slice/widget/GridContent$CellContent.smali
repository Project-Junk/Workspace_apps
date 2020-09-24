.class public Landroidx/slice/widget/GridContent$CellContent;
.super Ljava/lang/Object;
.source "GridContent.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellContent"
.end annotation


# instance fields
.field private mCellItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mContentIntent:Landroidx/slice/SliceItem;

.field private mHasImage:Z

.field private mImageMode:I

.field private mTextCount:I

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 250
    invoke-virtual {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->populate(Landroidx/slice/SliceItem;)Z

    return-void
.end method

.method private isValidCellContent(Landroidx/slice/SliceItem;)Z
    .locals 6

    .line 330
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_description"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "keywords"

    const-string/jumbo v4, "ttl"

    const-string v5, "last_updated"

    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_3

    const-string/jumbo p1, "text"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "long"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "image"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    :cond_3
    return v2
.end method


# virtual methods
.method public getCellItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 371
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    return v0
.end method

.method public getTextCount()I
    .locals 1

    .line 357
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    return v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 309
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    return v0
.end method

.method public isImageOnly()Z
    .locals 4

    .line 350
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v3, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 343
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public populate(Landroidx/slice/SliceItem;)Z
    .locals 8

    .line 257
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut"

    .line 258
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "slice"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "action"

    if-nez v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v2

    .line 262
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 265
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v2

    .line 267
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iput-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 270
    :cond_3
    iput v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    move p1, v6

    move v0, p1

    .line 272
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_c

    .line 273
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 274
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content_description"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 277
    :cond_4
    iget v4, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    const/4 v7, 0x2

    if-ge v4, v7, :cond_7

    const-string/jumbo v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "long"

    .line 278
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 279
    :cond_5
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 280
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_6

    const-string/jumbo v4, "title"

    .line 282
    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    :cond_6
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_7
    if-gtz v0, :cond_a

    .line 285
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "no_tint"

    .line 286
    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "large"

    .line 287
    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    move v7, v5

    :goto_1
    iput v7, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    goto :goto_2

    .line 291
    :cond_9
    iput v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 294
    iput-boolean v5, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    .line 295
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 298
    :cond_b
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->isValidCellContent(Landroidx/slice/SliceItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 299
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_c
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result p1

    return p1
.end method