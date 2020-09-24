.class public final Lcom/coloros/settings/feature/password/b;
.super Ljava/lang/Object;
.source "CountDownDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/b$a;
    }
.end annotation


# instance fields
.field public a:Lcolor/support/v7/app/AlertDialog;

.field public b:Landroid/content/DialogInterface$OnClickListener;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lcom/coloros/settings/feature/password/b;->c:I

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/feature/password/b;->d:Landroid/content/Context;

    .line 35
    new-instance p1, Lcom/coloros/settings/feature/password/b$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/password/b$a;-><init>(Lcom/coloros/settings/feature/password/b;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/b;->e:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "pwd_forget_warnning"

    const-string v1, "1"

    .line 1240
    invoke-static {p1, v0, v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/password/b;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 44
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/b;)V
    .locals 6

    .line 3075
    iget v0, p0, Lcom/coloros/settings/feature/password/b;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/feature/password/b;->c:I

    .line 3076
    iget-object v0, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 3077
    iget v2, p0, Lcom/coloros/settings/feature/password/b;->c:I

    if-nez v2, :cond_0

    .line 3078
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const p0, 0x7f120e36

    .line 3079
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 3081
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/password/b;->e:Landroid/os/Handler;

    const/16 v3, 0x374

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3082
    iget-object v2, p0, Lcom/coloros/settings/feature/password/b;->d:Landroid/content/Context;

    const v3, 0x7f120642

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget p0, p0, Lcom/coloros/settings/feature/password/b;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "pwd_forget_warnning"

    const-string v0, "0"

    .line 2240
    invoke-static {p0, p2, p2, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$fitujVqoVb1LRIHJXZyIEj6Idy8(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/password/b;->b(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$wpUb1gn4Y2XWCjpvVIp87mEQhFA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/password/b;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$xC4fyrv8MEpZ-5atSw4tM7s7IuY(Lcom/coloros/settings/feature/password/b;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/b;->a(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x5

    .line 39
    iput v0, p0, Lcom/coloros/settings/feature/password/b;->c:I

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/password/b;->d:Landroid/content/Context;

    .line 41
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121158

    .line 42
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f121157

    .line 43
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 44
    sget-object v2, Lcom/coloros/settings/feature/password/-$$Lambda$b$wpUb1gn4Y2XWCjpvVIp87mEQhFA;->INSTANCE:Lcom/coloros/settings/feature/password/-$$Lambda$b$wpUb1gn4Y2XWCjpvVIp87mEQhFA;

    const v3, 0x7f120491

    invoke-virtual {v1, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 45
    new-instance v2, Lcom/coloros/settings/feature/password/-$$Lambda$b$fitujVqoVb1LRIHJXZyIEj6Idy8;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/password/-$$Lambda$b$fitujVqoVb1LRIHJXZyIEj6Idy8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coloros/settings/feature/password/b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120642

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/password/-$$Lambda$b$xC4fyrv8MEpZ-5atSw4tM7s7IuY;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/password/-$$Lambda$b$xC4fyrv8MEpZ-5atSw4tM7s7IuY;-><init>(Lcom/coloros/settings/feature/password/b;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/password/b;->e:Landroid/os/Handler;

    const/16 v0, 0x374

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/password/b;->e:Landroid/os/Handler;

    const/16 v0, 0x374

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
