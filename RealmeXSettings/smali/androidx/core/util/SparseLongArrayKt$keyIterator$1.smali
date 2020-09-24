.class public final Landroidx/core/util/SparseLongArrayKt$keyIterator$1;
.super La/a/b;
.source "SparseLongArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/SparseLongArrayKt;->keyIterator(Landroid/util/SparseLongArray;)La/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic receiver$0:Landroid/util/SparseLongArray;


# direct methods
.method constructor <init>(Landroid/util/SparseLongArray;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseLongArray;

    invoke-direct {p0}, La/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 96
    iget v0, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->index:I

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 97
    iget v0, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->index:I

    iget-object v1, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextInt()I
    .locals 3

    .line 98
    iget-object v0, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->receiver$0:Landroid/util/SparseLongArray;

    iget v1, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 96
    iput p1, p0, Landroidx/core/util/SparseLongArrayKt$keyIterator$1;->index:I

    return-void
.end method
