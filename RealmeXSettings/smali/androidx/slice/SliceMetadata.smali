.class public Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "SliceMetadata.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceMetadata$SliceLoadingState;
    }
.end annotation


# static fields
.field public static final LOADED_ALL:I = 0x2

.field public static final LOADED_NONE:I = 0x0

.field public static final LOADED_PARTIAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpiry:J

.field private mHeaderContent:Landroidx/slice/widget/RowContent;

.field private mLastUpdated:J

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceAction;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 130
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const-string v0, "long"

    const-string/jumbo v1, "ttl"

    .line 131
    invoke-static {p2, v0, v1, p1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    :cond_0
    const-string v1, "last_updated"

    .line 135
    invoke-static {p2, v0, v1, p1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 139
    :cond_1
    new-instance p1, Landroidx/slice/widget/ListContent;

    invoke-direct {p1, p2}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 140
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 141
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeaderTemplateType()I

    move-result p1

    iput p1, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    .line 142
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object p2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    .line 143
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 144
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_4

    .line 145
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    const-string p2, "list_item"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 147
    iget-object p1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 148
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 149
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    const-string v2, "action"

    invoke-static {v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-direct {v1, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 155
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    const-string v0, "actions"

    const-string v1, "slice"

    const/4 v2, 0x0

    .line 455
    invoke-static {p0, v1, v0, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    const-string v3, "shortcut"

    .line 456
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 458
    invoke-static {p0, v1, v0, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_2

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 462
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 463
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 464
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    .line 407
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    return-wide v0
.end method

.method public getHeaderType()I
    .locals 1

    .line 218
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    return v0
.end method

.method public getInputRangeAction()Landroid/app/PendingIntent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 275
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 415
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    return-wide v0
.end method

.method public getListContent()Landroidx/slice/widget/ListContent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    return-object v0
.end method

.method public getLoadingState()I
    .locals 4

    .line 385
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const/4 v1, 0x0

    const-string v2, "partial"

    invoke-static {v0, v1, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 386
    :goto_0
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/core/SliceAction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    return-object v0
.end method

.method public getRange()Landroidx/core/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 316
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 318
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v1, "int"

    const-string v2, "max"

    .line 319
    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    const-string v3, "min"

    .line 320
    invoke-static {v0, v1, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 321
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x64

    :goto_1
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 323
    :goto_2
    new-instance v2, Landroidx/core/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getRangeValue()I
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 336
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 338
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v2, "int"

    const-string/jumbo v3, "value"

    .line 339
    invoke-static {v0, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSliceKeywords()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const/4 v1, 0x0

    const-string v2, "slice"

    const-string v3, "keywords"

    invoke-static {v0, v2, v3, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "text"

    .line 361
    invoke-static {v0, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 364
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 365
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 366
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 192
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeToExpiry()J
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 494
    iget-wide v2, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    return-wide v4
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 238
    :goto_0
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/core/SliceAction;

    .line 240
    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method public hasLargeMode()Z
    .locals 2

    .line 226
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCachedSlice()Z
    .locals 2

    .line 445
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "cached"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isErrorSlice()Z
    .locals 2

    .line 437
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 477
    iget-wide v2, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPermissionSlice()Z
    .locals 2

    .line 427
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "permission_request"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSelection()Z
    .locals 2

    .line 350
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public neverExpires()Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 485
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendInputRangeAction(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 291
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getRange()Landroidx/core/util/Pair;

    move-result-object v1

    .line 296
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v2, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    .line 297
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.slice.extra.RANGE_VALUE"

    .line 299
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 300
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendToggleAction(Landroidx/slice/core/SliceAction;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 261
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 262
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
