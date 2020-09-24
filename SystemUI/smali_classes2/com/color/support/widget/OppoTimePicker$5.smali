.class Lcom/color/support/widget/OppoTimePicker$5;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/OppoTimePicker;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker$5;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 0

    .line 171
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->requestFocus()Z

    .line 172
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker$5;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/OppoTimePicker;->access$100(Lcom/color/support/widget/OppoTimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/color/support/widget/OppoTimePicker;->access$102(Lcom/color/support/widget/OppoTimePicker;Z)Z

    .line 173
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker$5;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/OppoTimePicker;->access$200(Lcom/color/support/widget/OppoTimePicker;)V

    .line 174
    iget-object p0, p0, Lcom/color/support/widget/OppoTimePicker$5;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {p0}, Lcom/color/support/widget/OppoTimePicker;->access$000(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method
