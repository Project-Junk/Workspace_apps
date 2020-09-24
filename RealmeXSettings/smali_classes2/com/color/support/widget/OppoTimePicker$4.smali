.class Lcom/color/support/widget/OppoTimePicker$4;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 154
    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker$4;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 158
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker$4;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/OppoTimePicker;->access$100(Lcom/color/support/widget/OppoTimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/OppoTimePicker;->access$102(Lcom/color/support/widget/OppoTimePicker;Z)Z

    .line 159
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker$4;->this$0:Lcom/color/support/widget/OppoTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/OppoTimePicker;->access$200(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method
