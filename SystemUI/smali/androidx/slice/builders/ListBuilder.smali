.class public Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/ListBuilder$HeaderBuilder;,
        Landroidx/slice/builders/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/ListBuilder$RangeBuilder;,
        Landroidx/slice/builders/ListBuilder$LayoutDirection;,
        Landroidx/slice/builders/ListBuilder$ImageMode;
    }
.end annotation


# static fields
.field public static final ICON_IMAGE:I = 0x0

.field public static final INFINITY:J = -0x1L

.field public static final LARGE_IMAGE:I = 0x2

.field public static final SMALL_IMAGE:I = 0x1

.field public static final UNKNOWN_IMAGE:I = 0x3


# instance fields
.field private mHasSeeMore:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 199
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/time/Duration;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 215
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p3}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(Ljava/time/Duration;)V

    return-void
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 313
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addGridRow(Landroidx/slice/builders/GridRowBuilder;)V

    return-object p0
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 466
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    return-object p0
.end method

.method public addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$RangeBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 478
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)V

    return-object p0
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 251
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-object p0
.end method

.method public addSelection(Landroidx/slice/builders/SelectionBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SelectionBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 487
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addSelection(Landroidx/slice/builders/SelectionBuilder;)V

    return-object p0
.end method

.method public build()Landroidx/slice/Slice;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 238
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    check-cast p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getImpl()Landroidx/slice/builders/impl/ListBuilder;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 454
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object p0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 439
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getClock()Landroidx/slice/Clock;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object v0

    .line 441
    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getClock()Landroidx/slice/Clock;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object v0

    .line 443
    :cond_1
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    sget-object v1, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, p0, v1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAccentColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 331
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    return-object p0
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$HeaderBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    .line 243
    check-cast p1, Landroidx/slice/builders/impl/ListBuilder;

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-void
.end method

.method public setIsError(Z)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 429
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setIsError(Z)V

    return-object p0
.end method

.method public setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 394
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to add see more action when one has already been added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSeeMoreAction(Landroidx/remotecallback/RemoteCallback;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/remotecallback/RemoteCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 414
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-virtual {p1}, Landroidx/remotecallback/RemoteCallback;->toPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 419
    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    .line 415
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to add see more action when one has already been added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 374
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    .line 375
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to add see more row when one has already been added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
