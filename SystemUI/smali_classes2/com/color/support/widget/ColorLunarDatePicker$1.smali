.class Lcom/color/support/widget/ColorLunarDatePicker$1;
.super Ljava/lang/Object;
.source "ColorLunarDatePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLunarDatePicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLunarDatePicker;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$000(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->setWith(Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;)V

    .line 156
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v2}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 158
    iget-object v4, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v4}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    .line 159
    invoke-static {v0, v2, v4}, Lcom/color/support/widget/ColorLunarUtil;->calculateLunarByGregorian(III)[I

    .line 163
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$200(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorNumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v5, p2, p3}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$300(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorNumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 166
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v3, p2, p3}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$400(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorNumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 168
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v1, p2, p3}, Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;->change(III)V

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$100(Lcom/color/support/widget/ColorLunarDatePicker;)Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/color/support/widget/ColorLunarDatePicker;->access$500(Lcom/color/support/widget/ColorLunarDatePicker;Lcom/color/support/widget/ColorLunarDatePicker$IncompleteDate;)V

    .line 174
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$600(Lcom/color/support/widget/ColorLunarDatePicker;)V

    .line 175
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorLunarDatePicker;->access$700(Lcom/color/support/widget/ColorLunarDatePicker;)V

    .line 176
    iget-object p0, p0, Lcom/color/support/widget/ColorLunarDatePicker$1;->this$0:Lcom/color/support/widget/ColorLunarDatePicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorLunarDatePicker;->access$800(Lcom/color/support/widget/ColorLunarDatePicker;)V

    return-void

    .line 170
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
