.class public Lcolor/support/v7/widget/ColorPopupWindow;
.super Lcolor/support/v7/widget/ColorBasePopupWindow;
.source "ColorPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;,
        Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorPopupWindow"


# instance fields
.field private mIsDismissing:Z

.field private mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

.field private mOnPreInvokePopupListener:Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, v1, v0, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, p1, p2}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lcolor/support/v7/appcompat/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .line 40
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mIsDismissing:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/ColorBasePopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .line 40
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mIsDismissing:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mIsDismissing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 158
    iget-object v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissStart(Lcolor/support/v7/widget/ColorPopupWindow;)V

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorPopupWindow;->superDismiss()V

    :cond_1
    return-void
.end method

.method invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;->onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setOnAnimateDismissListener(Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

    return-void
.end method

.method public setOnPreInvokePopupListener(Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;

    return-void
.end method

.method public superDismiss()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 202
    iget-object v0, p0, Lcolor/support/v7/widget/ColorPopupWindow;->mOnAnimateDismissListener:Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p0}, Lcolor/support/v7/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissEnd(Lcolor/support/v7/widget/ColorPopupWindow;)V

    :cond_0
    return-void
.end method
