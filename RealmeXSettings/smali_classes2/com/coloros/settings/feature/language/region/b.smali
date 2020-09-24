.class public abstract Lcom/coloros/settings/feature/language/region/b;
.super Ljava/lang/Object;
.source "ExRecentSortBase.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coloros/settings/feature/language/region/b;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/b;->a:Landroid/content/Context;

    return-void
.end method

.method private f()I
    .locals 4

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 32
    check-cast p1, Lcom/coloros/settings/feature/language/region/b;

    .line 1081
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/region/b;->f()I

    move-result v0

    .line 1082
    invoke-direct {p1}, Lcom/coloros/settings/feature/language/region/b;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 1096
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 1097
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/region/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/language/region/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method
