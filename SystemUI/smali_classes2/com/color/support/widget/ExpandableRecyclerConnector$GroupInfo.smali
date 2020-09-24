.class Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupInfo"
.end annotation


# instance fields
.field animating:Z

.field dummyHeight:I

.field expanding:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 1383
    iput-boolean v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    const/4 v0, -0x1

    .line 1390
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector$1;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;-><init>()V

    return-void
.end method
