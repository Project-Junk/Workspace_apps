.class Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/AbsSpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcolor/support/v7/internal/widget/AbsSpinnerCompat;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/AbsSpinnerCompat;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->this$0:Lcolor/support/v7/internal/widget/AbsSpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .line 444
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 445
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 447
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 449
    iget-object v4, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->this$0:Lcolor/support/v7/internal/widget/AbsSpinnerCompat;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcolor/support/v7/internal/widget/AbsSpinnerCompat;->access$000(Lcolor/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 1

    .line 433
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 436
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
