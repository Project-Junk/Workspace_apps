.class Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;
.super Ljava/lang/Object;
.source "DownloadingInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-static {p1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$4;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;->rightBtnClicked()V

    :cond_0
    return-void
.end method
