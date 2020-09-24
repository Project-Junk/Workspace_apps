.class public final synthetic Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;->f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;

    iput-object p2, p0, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;->f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->lambda$onInputEvent$2$ColorSystemGestureManager$3(Landroid/view/MotionEvent;)V

    return-void
.end method
