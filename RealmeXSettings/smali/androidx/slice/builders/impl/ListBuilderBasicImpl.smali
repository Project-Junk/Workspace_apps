.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

.field mIsError:Z

.field private mKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public addGridRow(Landroidx/slice/builders/GridRowBuilder;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder;->getCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    .line 99
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    .line 100
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getCellDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getCellDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 108
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 111
    :cond_4
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_0

    .line 116
    :cond_5
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 118
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_6
    return-void
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 154
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 157
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getThumb()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getThumb()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_3
    return-void
.end method

.method public addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 167
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 170
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 83
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 86
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 89
    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_4
    return-void
.end method

.method public addSelection(Landroidx/slice/builders/SelectionBuilder;)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 183
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p1}, Landroidx/slice/builders/SelectionBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 8

    .line 244
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    const-string v0, "error"

    .line 245
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 247
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 249
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_1
    const-string v3, "keywords"

    .line 252
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 254
    :cond_2
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 255
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-eqz v3, :cond_5

    .line 256
    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 259
    :cond_3
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 260
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    .line 262
    :cond_4
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 264
    :cond_5
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "text"

    if-eqz v3, :cond_6

    .line 265
    new-instance v6, Landroidx/slice/SliceItem;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v5, v2, v7}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 267
    :cond_6
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 268
    new-instance v6, Landroidx/slice/SliceItem;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v6, v3, v5, v2, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 271
    :cond_7
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_8

    .line 272
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 274
    :cond_8
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 206
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "color"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public setIsError(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    .line 237
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "layout_direction"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    return-void
.end method

.method public setTtl(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 221
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string/jumbo p2, "ttl"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v2, "millis"

    invoke-virtual {p1, v0, v1, v2, p2}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setTtl(Ljava/time/Duration;)V
    .locals 2
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->setTtl(J)V

    return-void
.end method
