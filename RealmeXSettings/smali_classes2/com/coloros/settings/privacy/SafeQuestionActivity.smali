.class public Lcom/coloros/settings/privacy/SafeQuestionActivity;
.super Lcom/android/settings/SubSettings;
.source "SafeQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/SafeQuestionActivity$c;,
        Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;,
        Lcom/coloros/settings/privacy/SafeQuestionActivity$b;,
        Lcom/coloros/settings/privacy/SafeQuestionActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
    .locals 15

    move-object v4, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    .line 469
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "input_method"

    .line 471
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const v2, 0x7f0d028c

    .line 473
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a023c

    .line 474
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/color/support/widget/ColorEditText;

    const v2, 0x7f0a03dc

    .line 475
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0a0664

    .line 476
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 477
    new-instance v9, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f1210cb

    const/16 v11, 0x8

    const/4 v12, 0x1

    const v13, 0x7f120fd6

    if-eq v3, v12, :cond_2

    const/4 v14, 0x2

    if-eq v3, v14, :cond_1

    const/4 v10, 0x3

    if-eq v3, v10, :cond_0

    move-object v10, v1

    move-object v11, v10

    goto :goto_1

    :cond_0
    const v10, 0x7f121034

    .line 491
    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v13, 0x7f120b11

    .line 493
    invoke-virtual {v8, v13}, Lcom/color/support/widget/ColorEditText;->setHint(I)V

    const v13, 0x7f12081d

    .line 495
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v11, p2

    goto :goto_1

    .line 487
    :cond_1
    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 488
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 484
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    move-object v11, v1

    .line 498
    :goto_1
    invoke-virtual {v9, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 499
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v14, 0x0

    if-nez v10, :cond_3

    .line 500
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/high16 v6, 0x1040000

    .line 503
    new-instance v10, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;

    invoke-direct {v10, v7, v8, v5}, Lcom/coloros/settings/privacy/SafeQuestionActivity$2;-><init>(Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    invoke-virtual {v9, v6, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 513
    invoke-virtual {v9, v13, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v8, v12}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 516
    invoke-virtual {v8}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 517
    invoke-virtual {v9}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v9

    .line 518
    invoke-virtual {v9}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 519
    invoke-virtual {v9}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 521
    new-instance v0, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;

    invoke-direct {v0, v5, v9}, Lcom/coloros/settings/privacy/SafeQuestionActivity$3;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, -0x1

    .line 530
    invoke-virtual {v9, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 531
    new-instance v11, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;

    move-object v0, v11

    move-object v1, v8

    move/from16 v3, p1

    move-object v4, p0

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/coloros/settings/privacy/SafeQuestionActivity$4;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/TextView;ILandroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    invoke-virtual {v9, v14}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 575
    invoke-virtual {v9, v12}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 576
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 577
    new-instance v0, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;

    invoke-direct {v0, v8, v10}, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/Button;)V

    invoke-virtual {v8, v0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V
    .locals 7

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "6Ybor28QRRMyftsLi4bN2w"

    .line 438
    invoke-static {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    new-instance v0, Lcom/coloros/settings/privacy/SafeQuestionActivity$1;

    invoke-direct {v0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$1;-><init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V

    invoke-static {p0, v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_0
    invoke-static {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    .line 455
    new-instance v6, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;

    invoke-direct {v6, v0, p0, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V

    const-string v2, "7BLE35zGEWfaK8dGEKkeQX"

    const-string v3, "5100"

    const-string v4, "6Ybor28QRRMyftsLi4bN2w"

    invoke-static/range {v0 .. v6}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->startOperateVerify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/app/Activity;)V
    .locals 1

    .line 1462
    iget-object p0, p0, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1464
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 105
    const-class v1, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 111
    const-class v0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 606
    invoke-super {p0}, Lcom/android/settings/SubSettings;->onPause()V

    .line 607
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->b(Landroid/app/Activity;)V

    return-void
.end method
