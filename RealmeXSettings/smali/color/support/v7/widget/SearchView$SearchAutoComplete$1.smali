.class Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/SearchView$SearchAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/SearchView$SearchAutoComplete;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;->this$0:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1811
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView$SearchAutoComplete$1;->this$0:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    return-void
.end method