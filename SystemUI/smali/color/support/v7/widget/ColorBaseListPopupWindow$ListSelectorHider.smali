.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1821
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V
    .locals 0

    .line 1821
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1823
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ListSelectorHider;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->clearListSelection()V

    return-void
.end method
