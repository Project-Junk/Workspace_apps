.class Lcom/color/support/widget/ColorTimePicker$1;
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

    .line 286
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 0

    .line 289
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p3

    invoke-static {p2, p3}, Lcom/color/support/widget/ColorTimePicker;->access$002(Lcom/color/support/widget/ColorTimePicker;I)I

    .line 291
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p1

    const/16 p3, 0x9

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 292
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker$1;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorTimePicker;->access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
