.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V
    .locals 0

    .line 1483
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1486
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->access$800(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    .line 1487
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
