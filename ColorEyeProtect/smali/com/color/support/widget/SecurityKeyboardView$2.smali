.class Lcom/color/support/widget/SecurityKeyboardView$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/SecurityKeyboardView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/SecurityKeyboardView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$2;->a:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$2;->a:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$2;->a:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->b(Lcom/color/support/widget/SecurityKeyboardView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/color/support/widget/SecurityKeyboardView$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$2;->a:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {p0}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView$2;->a:Lcom/color/support/widget/SecurityKeyboardView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->a(Lcom/color/support/widget/SecurityKeyboardView;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
