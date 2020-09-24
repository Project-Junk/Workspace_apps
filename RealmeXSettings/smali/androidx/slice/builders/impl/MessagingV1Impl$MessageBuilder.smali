.class public final Landroidx/slice/builders/impl/MessagingV1Impl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/slice/builders/impl/MessagingV1Impl;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public final addSource(Landroid/graphics/drawable/Icon;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroidx/slice/builders/impl/MessagingV1Impl$MessageBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public final addText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/slice/builders/impl/MessagingV1Impl$MessageBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public final addTimestamp(J)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroidx/slice/builders/impl/MessagingV1Impl$MessageBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method
