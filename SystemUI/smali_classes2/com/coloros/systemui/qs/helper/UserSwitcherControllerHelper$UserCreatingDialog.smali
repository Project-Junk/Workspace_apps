.class public Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitcherControllerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserCreatingDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;I)V
    .locals 1

    .line 281
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->this$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    .line 282
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->setCancelable(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0209

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0383

    .line 289
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f110876

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->setView(Landroid/view/View;)V

    .line 293
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 294
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x110

    .line 295
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 297
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
