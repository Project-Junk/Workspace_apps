.class Lcolor/support/v7/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$1;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$1;->this$0:Lcolor/support/v7/widget/SearchView;

    .line 236
    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 239
    sget-object v1, Lcolor/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$1;->this$0:Lcolor/support/v7/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lcolor/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
