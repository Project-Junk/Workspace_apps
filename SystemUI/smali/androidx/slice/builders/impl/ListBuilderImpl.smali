.class public Landroidx/slice/builders/impl/ListBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderImpl.java"

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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;
    }
.end annotation


# instance fields
.field private mFirstRowChecked:Z

.field private mFirstRowHasText:Z

.field private mIsError:Z

.field private mIsFirstRowTypeValid:Z

.field private mKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceHeader:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 1

    .line 95
    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method

.method private checkRow(ZZ)V
    .locals 1

    .line 305
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 307
    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 308
    iput-boolean p2, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    .line 209
    :cond_0
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "actions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 210
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGridRow(Landroidx/slice/builders/GridRowBuilder;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl;->checkRow(ZZ)V

    .line 185
    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;

    invoke-direct {v0, p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;-><init>(Landroidx/slice/builders/impl/ListBuilderImpl;Landroidx/slice/builders/GridRowBuilder;)V

    .line 186
    invoke-virtual {v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 187
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 2

    .line 215
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    .line 216
    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->hasText()Z

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->checkRow(ZZ)V

    .line 217
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "range"

    invoke-virtual {p0, p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)V
    .locals 2

    .line 222
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$RangeBuilder;)V

    .line 223
    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->hasText()Z

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->checkRow(ZZ)V

    .line 224
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "range"

    invoke-virtual {p0, p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 163
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 164
    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->fillFrom(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 165
    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->hasText()Z

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->checkRow(ZZ)V

    .line 166
    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl;->addRow(Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;)V

    return-void
.end method

.method public addRow(Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->hasText()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl;->checkRow(ZZ)V

    .line 175
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 176
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addSelection(Landroidx/slice/builders/SelectionBuilder;)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v0

    sget-object v1, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceSpec;->canRender(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/impl/SelectionBuilderListV2Impl;

    .line 231
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Landroidx/slice/builders/impl/SelectionBuilderListV2Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/SelectionBuilder;)V

    invoke-virtual {v1}, Landroidx/slice/builders/impl/SelectionBuilderListV2Impl;->build()Landroidx/slice/Slice;

    move-result-object p0

    const-string p1, "selection"

    .line 230
    invoke-virtual {v0, p0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/impl/SelectionBuilderBasicImpl;

    .line 235
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Landroidx/slice/builders/impl/SelectionBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/SelectionBuilder;)V

    invoke-virtual {v1}, Landroidx/slice/builders/impl/SelectionBuilderBasicImpl;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 234
    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :goto_0
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 5

    .line 108
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_updated"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "millis"

    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 109
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 112
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    move v2, v1

    .line 114
    :goto_0
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 115
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "actions"

    .line 117
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 119
    :cond_2
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsError:Z

    if-eqz v0, :cond_3

    const-string v0, "error"

    .line 120
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 122
    :cond_3
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

    if-eqz p1, :cond_5

    .line 123
    new-instance p1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 124
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 125
    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const-string v0, "keywords"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_5
    return-void
.end method

.method public build()Landroidx/slice/Slice;
    .locals 7

    .line 136
    invoke-super {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "partial"

    .line 137
    invoke-static {v0, v1, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "slice"

    const-string v6, "list_item"

    .line 138
    invoke-static {v0, v5, v6, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v4, "shortcut"

    const-string v6, "title"

    .line 139
    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "action"

    .line 140
    invoke-static {v0, v6, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 141
    invoke-static {v0, v5, v4, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice requires a primary action; ensure one of your builders has called #setPrimaryAction with a valid SliceAction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_3
    :goto_2
    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    if-eqz v1, :cond_4

    goto :goto_3

    .line 148
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice cannot have the first row be constructed from a GridRowBuilder, consider using #setHeader."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_5
    :goto_3
    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-eqz v1, :cond_7

    iget-boolean p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    if-eqz p0, :cond_6

    goto :goto_4

    .line 152
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice requires the first row to have some text."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    return-object v0
.end method

.method public setColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 266
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$HeaderBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    .line 195
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    .line 196
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    .line 197
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V

    .line 198
    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->fillFrom(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V

    .line 199
    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    return-void
.end method

.method public setIsError(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsError:Z

    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "layout_direction"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice$Builder;

    .line 254
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v2, "see_more"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v1, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-instance v3, Landroidx/slice/Slice$Builder;

    .line 256
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-direct {v3, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {v3, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v1, p1, p0, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 253
    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 2

    .line 243
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 244
    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->fillFrom(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    .line 245
    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string v1, "see_more"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 246
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setTtl(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 281
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const-string p1, "ttl"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "millis"

    invoke-virtual {p0, v0, v1, p2, p1}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

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

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;->setTtl(J)V

    return-void
.end method