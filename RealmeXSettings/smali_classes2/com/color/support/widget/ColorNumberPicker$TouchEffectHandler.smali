.class Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;
.super Landroid/os/Handler;
.source "ColorNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2020
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 2021
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2026
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$800(Lcom/color/support/widget/ColorNumberPicker;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2033
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 2036
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->access$1000(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$1000(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2028
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$1100(Lcom/color/support/widget/ColorNumberPicker;)V

    .line 2029
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TouchEffectHandler;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$1200(Lcom/color/support/widget/ColorNumberPicker;)V

    .line 2044
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
