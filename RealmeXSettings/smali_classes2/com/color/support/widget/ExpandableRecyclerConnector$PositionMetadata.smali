.class public Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

.field public position:Lcom/color/support/widget/ExpandableRecyclerPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 3

    .line 1348
    sget-object v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1349
    :try_start_0
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1350
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    .line 1354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-direct {v1}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->resetState()V

    return-object v1

    .line 1352
    :cond_0
    :try_start_1
    new-instance v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    invoke-direct {v1}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1354
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 1

    .line 1339
    invoke-static {}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->getRecycledOrCreate()Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 1340
    invoke-static {p1, p2, p3, p0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object p0

    iput-object p0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    .line 1341
    iput-object p4, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1342
    iput p5, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    return-object v0
.end method

.method private resetState()V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->recycle()V

    .line 1325
    iput-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    .line 1327
    :cond_0
    iput-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    const/4 v0, 0x0

    .line 1328
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 1360
    invoke-direct {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->resetState()V

    .line 1361
    sget-object v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1362
    :try_start_0
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1363
    sget-object v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
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
