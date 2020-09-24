.class Lcom/color/support/widget/ColorTimePicker$2;
.super Ljava/lang/Object;
.source "ColorTimePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorTimePicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorTimePicker;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 3

    .line 301
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$300(Lcom/color/support/widget/ColorTimePicker;)Z

    move-result p2

    const/4 p3, 0x1

    const/16 v0, 0xc

    const/16 v1, 0xb

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$000(Lcom/color/support/widget/ColorTimePicker;)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$000(Lcom/color/support/widget/ColorTimePicker;)I

    move-result p2

    if-ne p2, p3, :cond_3

    .line 304
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 305
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 307
    :cond_1
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 302
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 310
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$300(Lcom/color/support/widget/ColorTimePicker;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 311
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 312
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$000(Lcom/color/support/widget/ColorTimePicker;)I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/color/support/widget/ColorTimePicker;->access$002(Lcom/color/support/widget/ColorTimePicker;I)I

    .line 313
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$400(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorNumberPicker;

    move-result-object p1

    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$000(Lcom/color/support/widget/ColorTimePicker;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 318
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$2;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_5
    return-void
.end method
