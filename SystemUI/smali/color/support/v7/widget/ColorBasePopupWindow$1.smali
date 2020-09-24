.class Lcolor/support/v7/widget/ColorBasePopupWindow$1;
.super Ljava/lang/Object;
.source "ColorBasePopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/ColorBasePopupWindow;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 14

    .line 150
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$000(Lcolor/support/v7/widget/ColorBasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$000(Lcolor/support/v7/widget/ColorBasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 151
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$100(Lcolor/support/v7/widget/ColorBasePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 153
    invoke-static {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$100(Lcolor/support/v7/widget/ColorBasePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 155
    iget-object v7, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-static {v7}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$200(Lcolor/support/v7/widget/ColorBasePopupWindow;)I

    move-result v4

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-static {v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$300(Lcolor/support/v7/widget/ColorBasePopupWindow;)I

    move-result v5

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 156
    invoke-static {v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$400(Lcolor/support/v7/widget/ColorBasePopupWindow;)I

    move-result v6

    move-object v1, v7

    move-object v3, v0

    .line 155
    invoke-static/range {v1 .. v6}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$500(Lcolor/support/v7/widget/ColorBasePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v1

    invoke-static {v7, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->access$600(Lcolor/support/v7/widget/ColorBasePopupWindow;Z)V

    .line 157
    iget-object v8, p0, Lcolor/support/v7/widget/ColorBasePopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBasePopupWindow;

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcolor/support/v7/widget/ColorBasePopupWindow;->update(IIIIZ)V

    :cond_1
    return-void
.end method
