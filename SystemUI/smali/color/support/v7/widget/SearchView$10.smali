.class Lcolor/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 1470
    iput-object p1, p0, Lcolor/support/v7/widget/SearchView$10;->this$0:Lcolor/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1477
    iget-object p0, p0, Lcolor/support/v7/widget/SearchView$10;->this$0:Lcolor/support/v7/widget/SearchView;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p3, p1, p2}, Lcolor/support/v7/widget/SearchView;->access$600(Lcolor/support/v7/widget/SearchView;IILjava/lang/String;)Z

    return-void
.end method
