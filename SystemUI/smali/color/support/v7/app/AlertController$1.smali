.class Lcolor/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/AlertController;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object v0, v0, Lcolor/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object v0, v0, Lcolor/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 136
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object v0, v0, Lcolor/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object v0, v0, Lcolor/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 138
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object v0, v0, Lcolor/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    :cond_3
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lcolor/support/v7/app/AlertController$1;->this$0:Lcolor/support/v7/app/AlertController;

    iget-object p0, p0, Lcolor/support/v7/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method