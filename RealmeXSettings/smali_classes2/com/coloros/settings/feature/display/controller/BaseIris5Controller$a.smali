.class public final Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;
.super Ljava/lang/Object;
.source "BaseIris5Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 97
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d021c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0137

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 101
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120f8f

    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$Ed1W2itACO4Nt5Q0CHkaVzeOPQ8;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$Ed1W2itACO4Nt5Q0CHkaVzeOPQ8;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f120491

    .line 102
    invoke-virtual {v2, p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;

    invoke-direct {v2, p0, v1, p2}, Lcom/coloros/settings/feature/display/controller/-$$Lambda$BaseIris5Controller$a$ZTYnTwUS1cs7wbc28on6H_UYf8I;-><init>(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f120f93

    .line 107
    invoke-virtual {p1, p2, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 116
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060087

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;Z)Z

    if-eqz p2, :cond_0

    .line 110
    invoke-interface {p2, p3, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Ed1W2itACO4Nt5Q0CHkaVzeOPQ8(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$ZTYnTwUS1cs7wbc28on6H_UYf8I(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$a;->a(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
