.class Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;
.super Ljava/lang/Object;
.source "DownloadingInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

.field private final synthetic val$leftBtnGD:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;->val$leftBtnGD:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;->val$leftBtnGD:Landroid/graphics/drawable/GradientDrawable;

    const p1, -0x1a1a1b

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 145
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$1;->val$leftBtnGD:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
