.class public final synthetic Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

.field private final synthetic f$1:Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;->f$1:Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;->f$1:Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->lambda$onGestureFinished$7$ColorSideGestureManager(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    return-void
.end method
