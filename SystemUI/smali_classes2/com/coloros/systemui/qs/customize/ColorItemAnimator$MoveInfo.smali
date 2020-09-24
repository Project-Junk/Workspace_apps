.class Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "ColorItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 65
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->fromX:I

    .line 66
    iput p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->fromY:I

    .line 67
    iput p4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->toX:I

    .line 68
    iput p5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->toY:I

    return-void
.end method
