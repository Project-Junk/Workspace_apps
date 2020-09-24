.class public Lcom/color/eyeprotect/util/LocalColorTimePicker;
.super Lcom/color/support/widget/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/util/LocalColorTimePicker$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/color/eyeprotect/util/LocalColorTimePicker$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/eyeprotect/util/LocalColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->a:Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/util/LocalColorTimePicker;->setRowNumber(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->a:Z

    iget-object v0, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->b:Lcom/color/eyeprotect/util/LocalColorTimePicker$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->b:Lcom/color/eyeprotect/util/LocalColorTimePicker$a;

    invoke-interface {v0, p0}, Lcom/color/eyeprotect/util/LocalColorTimePicker$a;->a(Lcom/color/eyeprotect/util/LocalColorTimePicker;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->a:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/util/LocalColorTimePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
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

.method public setOnTouchEndListener(Lcom/color/eyeprotect/util/LocalColorTimePicker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/util/LocalColorTimePicker;->b:Lcom/color/eyeprotect/util/LocalColorTimePicker$a;

    return-void
.end method
