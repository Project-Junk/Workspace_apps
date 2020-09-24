.class public final Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;
.super Lcom/color/support/widget/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;
    }
.end annotation


# instance fields
.field private isTouchEnd:Z

.field private mOnTouchEndListener:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd:Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setRowNumber(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILa/d/b/e;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd:Z

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->mOnTouchEndListener:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->mOnTouchEndListener:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-interface {v0, p0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;->onTouchEnd(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-super {p0, p1}, Lcom/color/support/widget/e;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isTouchEnd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd:Z

    return p0
.end method

.method public final setOnTouchEndListener(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->mOnTouchEndListener:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;

    return-void
.end method
