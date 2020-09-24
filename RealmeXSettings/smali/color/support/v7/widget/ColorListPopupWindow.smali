.class public Lcolor/support/v7/widget/ColorListPopupWindow;
.super Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.source "ColorListPopupWindow.java"

# interfaces
.implements Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;
.implements Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorListPopupWindow"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    sget v0, Lcolor/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcolor/support/v7/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    sget v0, Lcolor/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcolor/support/v7/widget/ColorBasePopupWindow;
    .locals 1

    .line 91
    new-instance v0, Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    invoke-virtual {v0, p0}, Lcolor/support/v7/widget/ColorPopupWindow;->setOnPreInvokePopupListener(Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;)V

    .line 93
    invoke-virtual {v0, p0}, Lcolor/support/v7/widget/ColorPopupWindow;->setOnAnimateDismissListener(Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;)V

    return-object v0
.end method

.method public onAnimateDismissEnd(Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 0

    return-void
.end method

.method public onAnimateDismissStart(Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorPopupWindow;->superDismiss()V

    return-void
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method
