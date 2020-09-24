.class public final Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field final mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;


# direct methods
.method private constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 84
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/MessagingListV1Impl;)V
    .locals 0

    .line 79
    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingListV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;-><init>(Landroidx/slice/Slice$Builder;)V

    return-void
.end method


# virtual methods
.method public final addSource(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)V

    return-void
.end method

.method public final addText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final addTimestamp(J)V
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->addEndItem(J)V

    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
