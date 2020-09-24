.class public Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
.super Ljava/lang/Object;
.source "StackDividerStatisticUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreenMenuOperationInfo"
.end annotation


# instance fields
.field private mCloseSplitMenu:I

.field private mDragSplitLine:I

.field private mOpenSplitMenu:I

.field private mSwitchSplitScreen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    .line 127
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    .line 128
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    .line 129
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->initStatus()V

    return-void
.end method

.method private initStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    .line 149
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    .line 150
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    .line 151
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return-void
.end method


# virtual methods
.method public setCloseSplitMenuTriggered()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mCloseSplitMenu:I

    return-void
.end method

.method public setDragSplitLineTriggered()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mDragSplitLine:I

    return-void
.end method

.method public setOpenSplitMenuTriggered()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mOpenSplitMenu:I

    return-void
.end method

.method public setSwitchSplitScreenTriggered()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->mSwitchSplitScreen:I

    return-void
.end method
