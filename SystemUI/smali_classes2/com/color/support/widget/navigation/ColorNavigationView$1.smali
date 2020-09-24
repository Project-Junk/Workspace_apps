.class Lcom/color/support/widget/navigation/ColorNavigationView$1;
.super Ljava/lang/Object;
.source "ColorNavigationView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$000(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-virtual {v1}, Lcom/color/support/widget/navigation/ColorNavigationView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 182
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$000(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    return v0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$100(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->updateSelectPosition(Landroid/view/MenuItem;)V

    .line 186
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$200(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p0}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$200(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
