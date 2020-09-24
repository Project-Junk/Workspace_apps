.class public Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;
.super Landroid/app/Activity;
.source "InsertSimCardDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 34
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1202ad

    invoke-direct {p1, p0, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1103a7

    .line 36
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1103a8

    .line 37
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 38
    new-instance v0, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$1;-><init>(Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;)V

    const v1, 0x7f1103a6

    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const v0, 0x102000b

    .line 49
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x11

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    new-instance v0, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$2;-><init>(Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
