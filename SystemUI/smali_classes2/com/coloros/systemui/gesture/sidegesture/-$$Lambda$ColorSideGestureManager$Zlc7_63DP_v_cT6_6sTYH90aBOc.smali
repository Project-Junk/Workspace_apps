.class public final synthetic Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->lambda$onGetAppIcon$3$ColorSideGestureManager(Landroid/graphics/Bitmap;)V

    return-void
.end method
