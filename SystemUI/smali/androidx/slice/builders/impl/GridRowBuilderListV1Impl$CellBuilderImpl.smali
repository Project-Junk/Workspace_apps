.class public final Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilderImpl"
.end annotation


# instance fields
.field private mContentIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method constructor <init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method private addImage(Landroidx/core/graphics/drawable/IconCompat;I)V
    .locals 1
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addImage(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    return-void
.end method

.method private addImage(Landroidx/core/graphics/drawable/IconCompat;IZ)V
    .locals 2
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "no_tint"

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string p2, "large"

    .line 228
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "partial"

    .line 231
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private addText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private addText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string p2, "partial"

    .line 189
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 192
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private addTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addTitleText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private addTitleText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "title"

    if-eqz p2, :cond_0

    const-string p2, "partial"

    .line 206
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    .line 209
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_description"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 240
    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->mContentIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "horizontal"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 256
    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :goto_0
    return-void
.end method

.method public fillFrom(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V
    .locals 6

    .line 148
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getCellDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getCellDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getTypes()Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->getLoadings()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 157
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 158
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 167
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addImage(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    goto :goto_1

    .line 163
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addTitleText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 160
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->addText(Ljava/lang/CharSequence;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method