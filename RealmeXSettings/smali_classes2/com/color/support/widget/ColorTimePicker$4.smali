.class Lcom/color/support/widget/ColorTimePicker$4;
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

    .line 367
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 1

    .line 370
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/color/support/widget/ColorTimePicker;->access$600(Lcom/color/support/widget/ColorTimePicker;I)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 374
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 375
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, 0x76c

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$4;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
