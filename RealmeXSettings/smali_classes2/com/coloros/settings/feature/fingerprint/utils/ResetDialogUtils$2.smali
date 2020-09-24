.class final Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$2;
.super Ljava/lang/Object;
.source "ResetDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils;->showInputDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)Lcolor/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$2;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$2;->val$inputCallBack:Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-interface {p1, v0, v1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;->onClickListener(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
