.class Lcolor/support/v7/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 1255
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$9;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1261
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$9;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->onSubmitQuery()V

    const/4 p0, 0x1

    return p0
.end method
