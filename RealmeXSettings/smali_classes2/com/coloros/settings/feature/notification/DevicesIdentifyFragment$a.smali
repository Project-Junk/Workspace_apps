.class final Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;
.super Ljava/lang/Object;
.source "DevicesIdentifyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V
    .locals 2

    .line 153
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f1303b1

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f121246

    .line 156
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121247

    .line 157
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120461

    .line 158
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 159
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 162
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;B)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->b(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "OUID"

    .line 1146
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    const-string p2, "reset_advertise_id"

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->c(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12124d

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
