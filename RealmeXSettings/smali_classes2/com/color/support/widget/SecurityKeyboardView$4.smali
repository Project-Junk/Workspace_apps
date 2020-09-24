.class Lcom/color/support/widget/SecurityKeyboardView$4;
.super Ljava/lang/Object;
.source "SecurityKeyboardView.java"

# interfaces
.implements Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/SecurityKeyboardView;->onLongPress(Lcom/color/support/widget/SecurityKeyboard$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/SecurityKeyboardView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboardView;->access$1300(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1464
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->access$1400(Lcom/color/support/widget/SecurityKeyboardView;)V

    return-void
.end method

.method public onPress(I)V
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboardView;->access$1300(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboardView;->access$1300(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboardView;->access$1300(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1469
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$4;->this$0:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView;->access$1400(Lcom/color/support/widget/SecurityKeyboardView;)V

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
