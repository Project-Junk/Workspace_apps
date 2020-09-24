.class public abstract Landroidx/slice/builders/TemplateSliceBuilder;
.super Ljava/lang/Object;
.source "TemplateSliceBuilder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TemplateSliceBuilder"


# instance fields
.field private final mBuilder:Landroidx/slice/Slice$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

.field private mSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    .line 70
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0, p2}, Landroidx/slice/builders/TemplateSliceBuilder;->getSpecs(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Landroidx/slice/builders/TemplateSliceBuilder;->selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 73
    iget-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No valid specs found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    .line 60
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 61
    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method private getSpecs(Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 127
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/slice/SliceManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static pair(Landroidx/slice/SliceSpec;Ljava/lang/Class;)Landroid/util/Pair;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/slice/SliceSpec;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/util/Pair<",
            "Landroidx/slice/SliceSpec;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/slice/builders/impl/TemplateBuilderImpl;",
            ">;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/slice/Slice;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method protected checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    iget-object v3, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    invoke-virtual {v3, p1}, Landroidx/slice/SliceSpec;->canRender(Landroidx/slice/SliceSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getBuilder()Landroidx/slice/Slice$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    return-object v0
.end method

.method protected getClock()Landroidx/slice/Clock;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    return-object v0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method
