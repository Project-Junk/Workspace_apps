.class Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;
.super Ljava/lang/Object;
.source "ColorSlideSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setClickView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$500(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 256
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$600(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setTriggerSource(I)V

    .line 258
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setIsFirstDown(Z)V

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$100(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    .line 261
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1, v3}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$602(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$400(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-gtz p1, :cond_4

    .line 249
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$300(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$200(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setTriggerSource(I)V

    .line 251
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$100(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    new-instance v4, Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    invoke-direct {v4, p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;-><init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    invoke-static {p1, v4}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$202(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;)Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    .line 243
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$300(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {v4}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$200(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    move-result-object v4

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$402(Lcom/color/support/widget/slideselect/ColorSlideSelectView;J)J

    .line 245
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setEnabled(Z)V

    .line 266
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getTriggerSource()I

    move-result p1

    if-nez p1, :cond_6

    .line 267
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$600(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 268
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setIsFirstDown(Z)V

    .line 270
    :cond_5
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/color/support/widget/slideselect/ColorSelectListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    return v3
.end method
