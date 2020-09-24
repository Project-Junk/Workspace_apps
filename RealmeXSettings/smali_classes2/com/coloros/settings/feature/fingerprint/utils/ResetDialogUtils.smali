.class public Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils;
.super Ljava/lang/Object;
.source "ResetDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;
    }
.end annotation


# static fields
.field public static final BIND_EMAIL_LIMIT_LENGTH:I = 0x40

.field public static final INPUT_DIALOG_TYPE_COMPLETE_EMAIL:I = 0x3

.field public static final INPUT_DIALOG_TYPE_MODIFY_EMAIL:I = 0x2

.field public static final INPUT_DIALOG_TYPE_NEW_EMAIL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showInputDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)Lcolor/support/v7/app/AlertDialog;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 47
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "input_method"

    .line 49
    invoke-virtual {v6, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const v1, 0x7f0d028c

    .line 51
    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a023c

    .line 52
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/color/support/widget/ColorEditText;

    const v0, 0x7f0a03dc

    .line 53
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 54
    new-instance v13, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v13, v6}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    const/16 v0, 0x8

    const/4 v15, 0x1

    const v1, 0x7f120fd6

    if-eq v7, v15, :cond_2

    const/4 v2, 0x2

    if-eq v7, v2, :cond_1

    const/4 v2, 0x3

    if-eq v7, v2, :cond_0

    move v5, v1

    move-object v1, v9

    goto :goto_0

    :cond_0
    const v1, 0x7f1210cd

    .line 68
    new-array v2, v15, [Ljava/lang/Object;

    aput-object p2, v2, v14

    invoke-virtual {v6, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1210ce

    .line 69
    invoke-virtual {v11, v2}, Lcom/color/support/widget/ColorEditText;->setHint(I)V

    const v2, 0x7f120fa9

    .line 71
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move v5, v2

    goto :goto_0

    :cond_1
    const v2, 0x7f1210cb

    .line 64
    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move v5, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    const v1, 0x7f1212e6

    .line 59
    invoke-virtual {v6, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f1212e5

    move v5, v0

    .line 74
    :goto_0
    invoke-virtual {v13, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    .line 75
    new-instance v3, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;

    move-object v0, v3

    move-object v1, v8

    move-object v2, v11

    move-object v14, v3

    move-object/from16 v3, p3

    move v15, v4

    move/from16 v4, p1

    move v9, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;ILandroid/app/Activity;)V

    invoke-virtual {v13, v15, v14}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {v13, v9, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v13, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 90
    invoke-virtual {v11, v0}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 91
    invoke-virtual {v11}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 92
    invoke-virtual {v13}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 94
    invoke-virtual {v9}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 96
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$2;

    move-object/from16 v5, p3

    invoke-direct {v0, v5}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$2;-><init>(Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)V

    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, -0x1

    .line 105
    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 106
    new-instance v13, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;

    move-object v0, v13

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, p1

    move-object/from16 v4, p0

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$3;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/TextView;ILandroid/app/Activity;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;Landroid/view/inputmethod/InputMethodManager;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 152
    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 153
    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    return-object v9
.end method
