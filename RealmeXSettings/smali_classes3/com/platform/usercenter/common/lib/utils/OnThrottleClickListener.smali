.class public abstract Lcom/platform/usercenter/common/lib/utils/OnThrottleClickListener;
.super Ljava/lang/Object;
.source "OnThrottleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x258


# instance fields
.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/utils/OnThrottleClickListener;->mSparseArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 24
    iget-object v3, p0, Lcom/platform/usercenter/common/lib/utils/OnThrottleClickListener;->mSparseArray:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x258

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/platform/usercenter/common/lib/utils/OnThrottleClickListener;->mSparseArray:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/common/lib/utils/OnThrottleClickListener;->onThrottleClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onThrottleClick(Landroid/view/View;)V
.end method
