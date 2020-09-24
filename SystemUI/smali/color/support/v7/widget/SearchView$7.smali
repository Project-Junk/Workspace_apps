.class Lcolor/support/v7/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1038
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 1043
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1045
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1047
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1049
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    iget-object v0, v0, Lcolor/support/v7/widget/SearchView;->mSearchSrcTextView:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    .line 1051
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 1054
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-static {p1}, Lcolor/support/v7/widget/SearchView;->access$300(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1055
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$7;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-static {p0}, Lcolor/support/v7/widget/SearchView;->access$300(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcolor/support/v7/widget/SearchView$OnSearchViewClickListener;->onSearchViewClick()V

    :cond_4
    :goto_0
    return-void
.end method
