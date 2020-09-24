.class public Lcom/coloros/anim/animation/content/MergePathsContent;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/PathContent;
.implements Lcom/coloros/anim/animation/content/GreedyContent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final firstPath:Landroid/graphics/Path;

.field private final mergePaths:Lcom/coloros/anim/model/content/MergePaths;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final pathContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final remainderPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/model/content/MergePaths;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/coloros/anim/model/content/MergePaths;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->name:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->mergePaths:Lcom/coloros/anim/model/content/MergePaths;

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Merge paths are not supported pre-KitKat."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addPaths()V
    .locals 3

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v2}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 98
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_2

    .line 99
    iget-object v2, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/PathContent;

    .line 101
    instance-of v3, v2, Lcom/coloros/anim/animation/content/ContentGroup;

    if-eqz v3, :cond_0

    .line 102
    check-cast v2, Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_1

    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    .line 105
    invoke-virtual {v2}, Lcom/coloros/anim/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v6, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-interface {v2}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/PathContent;

    .line 114
    instance-of v2, v0, Lcom/coloros/anim/animation/content/ContentGroup;

    if-eqz v2, :cond_3

    .line 115
    check-cast v0, Lcom/coloros/anim/animation/content/ContentGroup;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v2

    .line 116
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 118
    invoke-virtual {v0}, Lcom/coloros/anim/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 119
    iget-object v4, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 39
    instance-of v1, v0, Lcom/coloros/anim/animation/content/PathContent;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    check-cast v0, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 57
    iget-object v0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->mergePaths:Lcom/coloros/anim/model/content/MergePaths;

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/MergePaths;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/coloros/anim/animation/content/MergePathsContent$1;->$SwitchMap$com$coloros$anim$model$content$MergePaths$MergePathsMode:[I

    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->mergePaths:Lcom/coloros/anim/model/content/MergePaths;

    invoke-virtual {v1}, Lcom/coloros/anim/model/content/MergePaths;->getMode()Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/model/content/MergePaths$MergePathsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/coloros/anim/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/coloros/anim/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/coloros/anim/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 66
    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/coloros/anim/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 63
    :cond_5
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/MergePathsContent;->addPaths()V

    .line 79
    :goto_0
    iget-object p0, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/coloros/anim/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v1, p1, p2}, Lcom/coloros/anim/animation/content/PathContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
