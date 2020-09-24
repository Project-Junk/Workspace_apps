.class public Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"


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
        Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;
    }
.end annotation


# instance fields
.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;Landroidx/slice/builders/GridRowBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/impl/ListBuilderImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 62
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getLayoutDirection()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 63
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setLayoutDirection(I)V

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    :cond_1
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreCell()Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreCell()Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    .line 73
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 74
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 76
    :cond_4
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getCells()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    .line 77
    invoke-virtual {p0, p2}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V
    .locals 1

    .line 94
    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;-><init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V

    .line 95
    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->fillFrom(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    .line 96
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const-string v0, "horizontal"

    .line 85
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 86
    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .line 124
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "content_description"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "layout_direction"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    .line 118
    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v2, "see_more"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 112
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;-><init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V

    .line 103
    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->fillFrom(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    .line 104
    invoke-virtual {v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string v1, "see_more"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 105
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
