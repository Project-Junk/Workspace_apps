.class public final Landroidx/core/util/LongSparseArrayKt$keyIterator$1;
.super La/a/c;
.source "LongSparseArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/LongSparseArrayKt;->keyIterator(Landroid/util/LongSparseArray;)La/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic receiver$0:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->receiver$0:Landroid/util/LongSparseArray;

    invoke-direct {p0}, La/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 97
    iget v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 98
    iget v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    iget-object v1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->receiver$0:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextLong()J
    .locals 3

    .line 99
    iget-object v0, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->receiver$0:Landroid/util/LongSparseArray;

    iget v1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 97
    iput p1, p0, Landroidx/core/util/LongSparseArrayKt$keyIterator$1;->index:I

    return-void
.end method
