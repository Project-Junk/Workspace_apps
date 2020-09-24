.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

.field private final synthetic f$1:Landroid/widget/ImageView;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iput-object p2, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$1:Landroid/widget/ImageView;

    iput p3, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$1:Landroid/widget/ImageView;

    iget p0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$5KOLBKTf0CPLUV_uybmdinA45D0;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->lambda$startAnimation$4$GestureUpGuideBarView(Landroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
