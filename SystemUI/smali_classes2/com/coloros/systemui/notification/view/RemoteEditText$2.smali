.class Lcom/coloros/systemui/notification/view/RemoteEditText$2;
.super Ljava/lang/Object;
.source "RemoteEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/view/RemoteEditText;->showSoftInputFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/view/RemoteEditText;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;->this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;->this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;

    iget-object v0, v0, Lcom/coloros/systemui/notification/view/RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;->this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;->this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;

    iget-object v0, v0, Lcom/coloros/systemui/notification/view/RemoteEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/view/RemoteEditText$2;->this$0:Lcom/coloros/systemui/notification/view/RemoteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
