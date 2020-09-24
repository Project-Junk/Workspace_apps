.class Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;
.super Ljava/lang/Object;
.source "ColorActionMenuViewV6.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/widget/ColorActionMenuViewV6$2;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/ColorActionMenuViewV6$2;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;->this$1:Lcolor/support/v7/widget/ColorActionMenuViewV6$2;

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

    .line 165
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;->this$1:Lcolor/support/v7/widget/ColorActionMenuViewV6$2;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iget-object p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;->this$1:Lcolor/support/v7/widget/ColorActionMenuViewV6$2;

    iget-object p2, p2, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {p2}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 166
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;->this$1:Lcolor/support/v7/widget/ColorActionMenuViewV6$2;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    return-void
.end method
