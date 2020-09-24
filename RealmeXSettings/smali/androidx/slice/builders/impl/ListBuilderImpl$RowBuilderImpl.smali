.class public Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mStartItem:Landroidx/slice/Slice;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 433
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/impl/ListBuilderImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method

.method private addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    return-void
.end method

.method private addEndItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "no_tint"

    .line 601
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string p2, "large"

    .line 604
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "partial"

    if-eqz p3, :cond_2

    .line 607
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_2
    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 612
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 614
    :cond_3
    iget-object p2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEndItem(Landroidx/slice/builders/SliceAction;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    return-void
.end method

.method private addEndItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 2
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 627
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz p2, :cond_0

    const-string p2, "partial"

    .line 629
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 631
    :cond_0
    iget-object p2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 3

    .line 639
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "layout_direction"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method private setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 545
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method private setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 574
    new-instance v0, Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "text"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    .line 576
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    const-string p2, "partial"

    invoke-virtual {p1, p2}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 558
    new-instance v0, Landroidx/slice/SliceItem;

    const-string/jumbo v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    .line 560
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    const-string p2, "partial"

    invoke-virtual {p1, p2}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTitleItem(J)V
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 491
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string/jumbo p2, "title"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    return-void
.end method

.method private setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "no_tint"

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string p2, "large"

    .line 511
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "partial"

    if-eqz p3, :cond_2

    .line 514
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_2
    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v2, 0x0

    .line 517
    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 519
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_3
    const-string/jumbo p2, "title"

    .line 521
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    return-void
.end method

.method private setTitleItem(Landroidx/slice/builders/SliceAction;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 528
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(Landroidx/slice/builders/SliceAction;Z)V

    return-void
.end method

.method private setTitleItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 2

    .line 534
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string/jumbo v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "partial"

    .line 536
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 538
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    return-void
.end method


# virtual methods
.method protected addEndItem(J)V
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 584
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 584
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3

    .line 650
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 653
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 656
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 659
    :goto_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 660
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/Slice;

    .line 661
    invoke-virtual {p1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_3
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 664
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "content_description"

    invoke-virtual {p1, v1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 666
    :cond_4
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_5

    .line 667
    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_5
    return-void
.end method

.method fillFrom(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 6

    .line 443
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setBuilder(Landroidx/slice/Slice$Builder;)V

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 447
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getLayoutDirection()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 448
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getLayoutDirection()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setLayoutDirection(I)V

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleActionLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleItemLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 456
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTimeStamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(J)V

    goto :goto_2

    .line 453
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleImageMode()I

    move-result v1

    .line 454
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleItemLoading()Z

    move-result v2

    .line 453
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    goto :goto_2

    .line 451
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleActionLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(Landroidx/slice/builders/SliceAction;Z)V

    .line 458
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleLoading()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 459
    :cond_7
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isTitleLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 461
    :cond_8
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isSubtitleLoading()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    :cond_9
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->isSubtitleLoading()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 464
    :cond_a
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 465
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 467
    :cond_b
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndItems()Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndTypes()Ljava/util/List;

    move-result-object v1

    .line 469
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getEndLoads()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 470
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 471
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    goto :goto_4

    .line 476
    :cond_c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/builders/SliceAction;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    goto :goto_4

    .line 480
    :cond_d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 481
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

    invoke-direct {p0, v4, v3, v5}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    goto :goto_4

    .line 473
    :cond_e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(J)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method hasText()Z
    .locals 1

    .line 643
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;IZ)V

    return-void
.end method
