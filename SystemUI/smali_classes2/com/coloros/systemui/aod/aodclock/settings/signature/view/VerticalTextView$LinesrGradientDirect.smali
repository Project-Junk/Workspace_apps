.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;
.super Ljava/lang/Object;
.source "VerticalTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinesrGradientDirect"
.end annotation


# instance fields
.field public startX:I

.field public startY:I

.field public stopX:I

.field public stopY:I

.field private x0:I

.field private x1:I

.field private y0:I

.field private y1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle(Landroid/graphics/drawable/GradientDrawable$Orientation;)I
    .locals 0

    .line 583
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0x13b

    return p0

    :pswitch_1
    return p1

    :pswitch_2
    const/16 p0, 0x2d

    return p0

    :pswitch_3
    const/16 p0, 0x5a

    return p0

    :pswitch_4
    const/16 p0, 0x87

    return p0

    :pswitch_5
    const/16 p0, 0xb4

    return p0

    :pswitch_6
    const/16 p0, 0xe1

    return p0

    :pswitch_7
    const/16 p0, 0x10e

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rotate(I)V
    .locals 1

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 616
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 619
    rem-int/lit16 p1, p1, 0x168

    add-int/2addr p1, v0

    :cond_1
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_7

    const/16 v0, 0x87

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x13b

    if-eq p1, v0, :cond_2

    .line 665
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 666
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 667
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 668
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 659
    :cond_2
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 660
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 661
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 662
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 653
    :cond_3
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 654
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 655
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 656
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 647
    :cond_4
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 648
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 649
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 650
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 641
    :cond_5
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 642
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 643
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 644
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 635
    :cond_6
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 636
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 637
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 638
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 629
    :cond_7
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 630
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 631
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 632
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    goto :goto_0

    .line 623
    :cond_8
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 624
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 625
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 626
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    :goto_0
    return-void
.end method

.method public setLocation(IIII)V
    .locals 0

    .line 572
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x0:I

    .line 573
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y0:I

    .line 574
    iput p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->x1:I

    .line 575
    iput p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->y1:I

    .line 576
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    .line 577
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    .line 578
    iput p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    .line 579
    iput p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    return-void
.end method
