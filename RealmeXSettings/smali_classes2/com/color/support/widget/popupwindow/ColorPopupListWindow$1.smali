.class Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;
.super Ljava/lang/Object;
.source "ColorPopupListWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/popupwindow/ColorPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;


# direct methods
.method constructor <init>(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;->this$0:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;->this$0:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-static {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->access$100(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V

    .line 103
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;->this$0:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->access$002(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;->this$0:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->access$002(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Z)Z

    return-void
.end method
