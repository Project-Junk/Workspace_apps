.class Lcolor/support/v7/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar$1;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$1;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {v0}, Lcolor/support/v7/widget/Toolbar;->access$000(Lcolor/support/v7/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object p0, p0, Lcolor/support/v7/widget/Toolbar$1;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p0}, Lcolor/support/v7/widget/Toolbar;->access$000(Lcolor/support/v7/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
