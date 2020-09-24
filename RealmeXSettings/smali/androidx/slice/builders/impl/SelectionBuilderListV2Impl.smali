.class public Landroidx/slice/builders/impl/SelectionBuilderListV2Impl;
.super Landroidx/slice/builders/impl/SelectionBuilderImpl;
.source "SelectionBuilderListV2Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/SelectionBuilder;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/SelectionBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/SelectionBuilder;)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 9

    .line 52
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 54
    invoke-virtual {p0}, Landroidx/slice/builders/impl/SelectionBuilderListV2Impl;->getSelectionBuilder()Landroidx/slice/builders/SelectionBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->check()V

    .line 58
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 62
    :cond_0
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 66
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v5, "content_description"

    invoke-virtual {v0, v2, v5, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 71
    :cond_2
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getLayoutDirection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 72
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getLayoutDirection()I

    move-result v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v5, "layout_direction"

    invoke-virtual {v0, v2, v5, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 75
    :cond_3
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getOptions()Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 77
    new-instance v5, Landroidx/slice/Slice$Builder;

    invoke-direct {v5, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 78
    iget-object v6, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getSelectedOption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "selected"

    .line 79
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 81
    :cond_4
    iget-object v6, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "selection_option_key"

    invoke-virtual {v5, v6, v8, v7}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 82
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "selection_option_value"

    invoke-virtual {v5, v3, v7, v6}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    const-string v3, "selection_option"

    .line 83
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 84
    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 89
    invoke-virtual {v1}, Landroidx/slice/builders/SelectionBuilder;->getInputAction()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    const-string v2, "selection"

    invoke-virtual {p1, v1, v0, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    const-string v0, "list_item"

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method
