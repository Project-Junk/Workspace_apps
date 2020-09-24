.class Lcom/color/support/widget/ExpandableRecyclerPosition;
.super Ljava/lang/Object;
.source "ExpandableRecyclerPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ExpandableRecyclerPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Lcom/color/support/widget/ExpandableRecyclerPosition;
    .locals 3

    .line 116
    sget-object v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ExpandableRecyclerPosition;

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-direct {v1}, Lcom/color/support/widget/ExpandableRecyclerPosition;->resetState()V

    return-object v1

    .line 120
    :cond_0
    :try_start_1
    new-instance v1, Lcom/color/support/widget/ExpandableRecyclerPosition;

    invoke-direct {v1}, Lcom/color/support/widget/ExpandableRecyclerPosition;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;
    .locals 1

    .line 106
    invoke-static {}, Lcom/color/support/widget/ExpandableRecyclerPosition;->getRecycledOrCreate()Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 107
    iput p0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    .line 108
    iput p1, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 109
    iput p2, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    .line 110
    iput p3, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->flatListPos:I

    return-object v0
.end method

.method static obtainChildPosition(II)Lcom/color/support/widget/ExpandableRecyclerPosition;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-static {v0, p0, p1, v1}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object p0

    return-object p0
.end method

.method static obtainGroupPosition(I)Lcom/color/support/widget/ExpandableRecyclerPosition;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 82
    invoke-static {v1, p0, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object p0

    return-object p0
.end method

.method static obtainPosition(J)Lcom/color/support/widget/ExpandableRecyclerPosition;
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    invoke-static {}, Lcom/color/support/widget/ExpandableRecyclerPosition;->getRecycledOrCreate()Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 95
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 96
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 97
    iput v2, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    .line 98
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p0

    iput p0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 100
    iput p0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    :goto_0
    return-object v0
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 66
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    .line 67
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->flatListPos:I

    .line 68
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    .line 75
    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v1, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public recycle()V
    .locals 3

    .line 132
    sget-object v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 134
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
