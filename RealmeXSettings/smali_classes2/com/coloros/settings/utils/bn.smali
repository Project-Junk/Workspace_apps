.class public final Lcom/coloros/settings/utils/bn;
.super Ljava/lang/Object;
.source "VerificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/bn$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field public b:Lcom/coloros/settings/utils/bn$a;

.field c:Z

.field d:Lcolor/support/v7/app/AlertDialog;

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/coloros/settings/utils/bn;->e:Landroid/os/Bundle;

    return-void
.end method

.method private c()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->e:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "hide_verification_dialog"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    .line 69
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/settings/utils/bn;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/settings/utils/bn;->c:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final b()V
    .locals 10

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    const-string v2, "input_method"

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const v3, 0x7f0d0391

    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a077e

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/utils/VerificationView;

    const v4, 0x7f0a023c

    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/ColorEditText;

    .line 88
    iget-object v5, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    const v6, 0x40666666    # 3.6f

    cmpl-float v5, v5, v6

    const/4 v6, 0x1

    if-lez v5, :cond_0

    const/high16 v5, 0x41880000    # 17.0f

    .line 90
    invoke-virtual {v4, v6, v5}, Lcom/color/support/widget/ColorEditText;->setTextSize(IF)V

    :cond_0
    const v5, 0x7f0a03dc

    .line 92
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 93
    new-instance v7, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/coloros/settings/utils/bn;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f12076e

    .line 94
    invoke-virtual {v7, v8}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    .line 95
    new-instance v9, Lcom/coloros/settings/utils/bn$1;

    invoke-direct {v9, p0, v1, v4}, Lcom/coloros/settings/utils/bn$1;-><init>(Lcom/coloros/settings/utils/bn;Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v7, v8, v9}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v8, 0x7f120fd6

    .line 105
    invoke-virtual {v7, v8, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v7, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v4, v6}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 108
    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 109
    invoke-virtual {v7}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    new-instance v2, Lcom/coloros/settings/utils/bn$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/utils/bn$2;-><init>(Lcom/coloros/settings/utils/bn;)V

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    const v0, 0x7f12076d

    .line 122
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 124
    new-instance v2, Lcom/coloros/settings/utils/bn$3;

    invoke-direct {v2, p0, v4, v3, v1}, Lcom/coloros/settings/utils/bn$3;-><init>(Lcom/coloros/settings/utils/bn;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/utils/VerificationView;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    new-instance v2, Lcom/coloros/settings/utils/bn$4;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/utils/bn$4;-><init>(Lcom/coloros/settings/utils/bn;Landroid/widget/Button;)V

    invoke-virtual {v4, v2}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/utils/bn;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, v6}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method
