.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$dqdmdp0lR3R9T39CNiY6Wg52lKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$dqdmdp0lR3R9T39CNiY6Wg52lKs;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$dqdmdp0lR3R9T39CNiY6Wg52lKs;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->lambda$getBannerOuterTouchListener$0$FullScreenBannerHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
