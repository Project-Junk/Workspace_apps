.class public Lcom/coloros/settings/privacy/ChooseGenericPrivacy;
.super Landroid/app/Activity;
.source "ChooseGenericPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:J


# instance fields
.field private d:Lcom/coloros/settings/privacy/a/g$d;

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/coloros/settings/privacy/a/g;

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 150
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, v0, v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V
    .locals 1

    .line 342
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    const-string v0, "input_method"

    .line 343
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 346
    new-instance p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$27;

    invoke-direct {p1, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$27;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    const/high16 p2, 0x1040000

    invoke-virtual {v0, p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 353
    invoke-virtual {v0, p3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 355
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->d(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "ChooseGenericPrivacy"

    const-string p2, "dialog host activity is not alive, will not show dialog"

    .line 356
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 363
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x5

    .line 364
    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 365
    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$2;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, -0x1

    .line 372
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 373
    new-instance p2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;

    invoke-direct {p2, p0, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ILandroid/content/Intent;II)V
    .locals 7

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "choose_password_type"

    .line 396
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p3, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v4, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 400
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "sourceType = "

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "ChooseGenericPrivacy"

    invoke-static {p4, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v6, :cond_0

    if-ne p1, v3, :cond_1

    .line 402
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 403
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->b(Landroid/content/Context;)V

    :cond_1
    if-eq p1, v6, :cond_2

    if-ne p1, v2, :cond_3

    .line 407
    :cond_2
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 408
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->f(Landroid/content/Context;)V

    :cond_3
    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/4 p2, 0x7

    if-eq p1, p2, :cond_4

    if-ne p1, p3, :cond_5

    :cond_4
    const p1, 0x7f121110

    .line 413
    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 416
    :cond_5
    iget-boolean p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->g:Z

    if-eqz p1, :cond_6

    .line 417
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "param_setup_privacy"

    .line 418
    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    new-instance p2, Lcom/android/settings/core/f;

    invoke-direct {p2, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p3, Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    .line 420
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p2

    .line 421
    invoke-virtual {p2, v5}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p2

    .line 422
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    .line 425
    :cond_6
    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->setResult(I)V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    const-string p1, "password_quality_type"

    .line 428
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "confirm_challenge"

    .line 430
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_8

    .line 432
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 434
    :cond_8
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq v1, v6, :cond_b

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    const/4 p1, 0x4

    if-eq v1, p1, :cond_a

    if-eq v1, p3, :cond_9

    .line 451
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    .line 437
    :cond_9
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 447
    :cond_a
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 442
    :cond_b
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 455
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 950
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "input_method"

    .line 952
    invoke-virtual {v7, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    const/4 v10, 0x0

    const v1, 0x7f0d028c

    .line 954
    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0a023c

    .line 955
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/color/support/widget/ColorEditText;

    const v0, 0x7f0a03dc

    .line 956
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0664

    .line 957
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    const v1, 0x7f120b24

    .line 958
    invoke-virtual {v12, v1}, Lcom/color/support/widget/ColorEditText;->setHint(I)V

    const/16 v1, 0x8

    .line 959
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0563

    .line 960
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    const/4 v15, 0x0

    .line 961
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 962
    new-instance v5, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$13;

    invoke-direct {v5, v6, v14}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$13;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/widget/Button;)V

    .line 974
    new-instance v4, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v4

    move-object v4, v14

    move-object/from16 p3, v5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$14;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/os/CountDownTimer;)V

    invoke-virtual {v14, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 983
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f12186d

    .line 984
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-object/from16 v1, p2

    .line 985
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 987
    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;

    move-object/from16 v2, p3

    invoke-direct {v1, v6, v2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$15;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 993
    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$16;

    invoke-direct {v1, v6, v9, v12, v8}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$16;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1210d4

    const/4 v3, 0x0

    .line 1004
    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v0, v15}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1006
    invoke-virtual {v0, v11}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1007
    invoke-virtual {v12, v1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 1008
    invoke-virtual {v12}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 1009
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v5

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v5}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 1014
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1015
    invoke-virtual {v5}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 1016
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1017
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;

    invoke-direct {v0, v6, v8, v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$17;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v5, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, -0x1

    .line 1027
    invoke-virtual {v5, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 1028
    new-instance v10, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$18;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Landroid/view/inputmethod/InputMethodManager;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    invoke-virtual {v7, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1042
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$19;

    invoke-direct {v0, v6, v12, v7}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$19;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Landroid/widget/Button;)V

    invoke-virtual {v12, v0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 1151
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooseGenericPrivacy"

    const-string v1, "saveSellmodePassword"

    .line 1152
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sell_mode_privacy_type"

    .line 1154
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "sell_mode_privacy_password"

    .line 1155
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected static a(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "privacy_shared"

    const/4 v1, 0x0

    .line 1146
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1147
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "privacy_account_choose"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 514
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

.method private synthetic a(Lcolor/support/v7/app/AlertDialog;Z[B)V
    .locals 2

    if-eqz p2, :cond_0

    .line 6569
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x5

    const-string v1, "choose_password_type"

    .line 6570
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "confirm_challenge"

    .line 6572
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p3, 0x2

    const-string v0, "password_quality_type"

    .line 6573
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6575
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p3, 0x13

    .line 6576
    invoke-virtual {p0, p2, p3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    const p1, 0x7f12110a

    const/4 p2, 0x0

    .line 530
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic a(Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/a/g;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 3

    const-string p4, "PrivacyPasswordController"

    .line 520
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 524
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 525
    new-instance v0, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$72i9U2C8nUUC04j3zTu24K4h18I;

    invoke-direct {v0, p0, p3}, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$72i9U2C8nUUC04j3zTu24K4h18I;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcolor/support/v7/app/AlertDialog;)V

    .line 5363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 5367
    new-instance p3, Lcom/coloros/settings/privacy/a/d;

    sget-object v2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {p3, v2}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 5368
    sget-object v2, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget p2, p2, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {p3, v2, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 5369
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    const/4 v2, 0x2

    invoke-virtual {p3, p2, v2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 5370
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 5371
    invoke-virtual {p3}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 5373
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 5374
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 5375
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5376
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 6234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 5378
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "checkAnswer succeed"

    .line 5379
    invoke-static {p4, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 5381
    invoke-interface {v0, p2, p1}, Lcom/coloros/settings/privacy/a/g$a;->onChecked(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5387
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkAnswer e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "checkAnswer fail"

    .line 5389
    invoke-static {p4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 5391
    invoke-interface {v0, p1, v1}, Lcom/coloros/settings/privacy/a/g$a;->onChecked(Z[B)V

    goto :goto_1

    .line 5364
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checkAnswer null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "ChooseGenericPrivacy"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "confirmByUrl start"

    .line 6634
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6635
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->k:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 6636
    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    const/4 v4, 0x3

    const-string v5, "1.0"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/coloros/settings/privacy/a/g;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6637
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "requestId"

    .line 6638
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ticketNo"

    .line 6639
    invoke-virtual {v4, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "userToken"

    .line 6640
    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string p2, "1"

    .line 6641
    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "language"

    .line 6642
    invoke-static {}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "area"

    const-string p2, "persist.sys.oppo.region"

    const-string v3, "CN"

    .line 7025
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6643
    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "application/json; charset=utf-8"

    .line 6644
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    .line 6645
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 6646
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 6647
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 6648
    new-instance p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;

    invoke-direct {p1, p0, v2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lokhttp3/Request$Builder;)V

    new-array p2, v1, [Ljava/lang/String;

    .line 6687
    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->e:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6689
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    invoke-direct {p0, v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ChooseGenericPrivacy"

    :try_start_0
    const-string v1, "checkVerificationCode start"

    .line 8839
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8840
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 8841
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "requestId"

    .line 8842
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "validateCode"

    .line 8843
    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "application/json; charset=utf-8"

    .line 8844
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    .line 8845
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 8846
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 8847
    invoke-virtual {v1, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 8848
    new-instance p3, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    invoke-direct {p3, p0, v1, p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 8911
    invoke-virtual {p3, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8914
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error occur, e = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 8915
    invoke-static {p2, p2, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8916
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;)V
    .locals 11

    const-string v0, "ChooseGenericPrivacy"

    :try_start_0
    const-string v1, "requestVerificationCode start"

    .line 7748
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7749
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 7750
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "requestId"

    .line 7751
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "2"

    .line 7752
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "language"

    .line 7753
    invoke-static {}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "area"

    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    .line 8025
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7754
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "application/json; charset=utf-8"

    .line 7755
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 7756
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 7757
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 7758
    invoke-virtual {v6, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 7759
    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;

    move-object v4, v1

    move-object v5, p0

    move v7, p3

    move-object v8, p4

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lokhttp3/Request$Builder;ZLandroid/content/DialogInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 7826
    invoke-virtual {v1, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7829
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Error occur, e = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 7831
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;[B)V
    .locals 3

    .line 7614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "choose_password_type"

    const/4 v2, 0x6

    .line 7615
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "password_quality_type"

    const/4 v2, 0x2

    .line 7616
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "confirm_challenge"

    .line 7617
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 7618
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x14

    .line 7619
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 922
    invoke-static {p1, p2, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 923
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$11;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p0, p1, p2, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p0, v0

    .line 944
    :cond_0
    sput-object p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    move-object p1, v0

    .line 945
    :cond_1
    sput-object p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 946
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    :goto_0
    sput-wide p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->c:J

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->j:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "privacy_shared"

    .line 1141
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "privacy_account_choose"

    .line 1142
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f:Z

    return p0
.end method

.method private b()V
    .locals 4

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "choose_password_type"

    .line 388
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "password_quality_type"

    const/4 v3, 0x2

    .line 389
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 6

    .line 1160
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ChooseGenericPrivacy"

    const-string v1, "clearSellmodePassword"

    .line 1161
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sell_mode_privacy_type"

    .line 1163
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "sell_mode_privacy_password"

    .line 1164
    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 1165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v3, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v3, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 1170
    invoke-virtual {v3}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v4

    .line 1171
    invoke-virtual {v4}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1172
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;

    invoke-direct {v0, v3, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;-><init>(Lcom/coloros/settings/privacy/a/g;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/g$d;ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;)V

    return-void

    :cond_1
    const-string p0, "clearSellmodePassword no privacy password"

    .line 1194
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "clearSellmodePassword not save privacy password return"

    .line 1166
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;[B)V
    .locals 3

    .line 8623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startResetByEmail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseGenericPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "choose_password_type"

    const/4 v2, 0x7

    .line 8625
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "password_quality_type"

    const/4 v2, 0x2

    .line 8626
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "confirm_challenge"

    .line 8627
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8628
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x15

    .line 8629
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 739
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Z
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Lcom/coloros/settings/privacy/a/g;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$72i9U2C8nUUC04j3zTu24K4h18I(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcolor/support/v7/app/AlertDialog;Z[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcolor/support/v7/app/AlertDialog;Z[B)V

    return-void
.end method

.method public static synthetic lambda$BfzTbc9szcToPZCCO1B_NI2a8fs(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/a/g;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/a/g;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nFmSQNzLvaXHLWlmoQ05MrtzdAA(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1071
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseGenericPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1074
    invoke-direct {p0, p2, p3, v0, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    const/4 v2, 0x4

    const/16 v3, 0x12

    if-ne p1, v3, :cond_1

    .line 1079
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_1
    const/4 v3, 0x6

    const/16 v4, 0x14

    if-ne p1, v4, :cond_2

    .line 1081
    invoke-direct {p0, p2, p3, v3, v4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_2
    const/4 v4, 0x5

    const/16 v5, 0x13

    if-ne p1, v5, :cond_3

    .line 1083
    invoke-direct {p0, p2, p3, v4, v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_3
    const/16 v6, 0x15

    const/4 v7, 0x7

    if-ne p1, v6, :cond_4

    .line 1085
    invoke-direct {p0, p2, p3, v7, v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_4
    const/4 v5, -0x1

    if-ne p1, v2, :cond_6

    .line 1087
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    if-nez p1, :cond_5

    if-ne p2, v5, :cond_5

    .line 1089
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void

    .line 1091
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_6
    const/16 v2, 0x8

    if-ne p1, v4, :cond_9

    .line 1094
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    if-ne p2, v5, :cond_8

    if-eqz p1, :cond_7

    .line 4460
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.settings.privacy.confirm"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "only_privacy_confirm"

    .line 4461
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4462
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4463
    invoke-virtual {p0, p1, v2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1099
    :cond_7
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void

    .line 1102
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_9
    if-ne p1, v2, :cond_c

    if-ne p2, v5, :cond_b

    .line 1106
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1107
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->f(Landroid/content/Context;)V

    .line 1109
    :cond_a
    invoke-virtual {p0, v5}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->setResult(I)V

    goto :goto_0

    .line 1112
    :cond_b
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_c
    if-ne p1, v3, :cond_e

    .line 1115
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    if-nez p1, :cond_d

    if-ne p2, v5, :cond_d

    .line 1117
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.intent.action.CHECK_APP_PRIVACY_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0, p1, v7}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1120
    :cond_d
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_e
    if-ne p1, v7, :cond_10

    .line 1123
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    if-nez p1, :cond_f

    if-ne p2, v5, :cond_f

    .line 1125
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void

    .line 1127
    :cond_f
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_10
    const/16 v0, 0x9

    if-ne p1, v0, :cond_11

    .line 1130
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_11
    const/16 v0, 0x10

    if-ne p1, v0, :cond_12

    const/4 p1, 0x3

    .line 1132
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    :cond_12
    const/16 v0, 0x11

    if-ne p1, v0, :cond_13

    .line 1134
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(ILandroid/content/Intent;II)V

    return-void

    .line 1136
    :cond_13
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 1608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1609
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1610
    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->m:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v2, v0, v4, v3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    const-string v4, "key_ui_mode"

    .line 179
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    .line 2206
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "param_setup_privacy"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->g:Z

    .line 3199
    invoke-static {}, Lcom/coloros/settings/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 3200
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "initUrl mainUrl = "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ChooseGenericPrivacy"

    invoke-static {v4, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "auth/account"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->k:Ljava/lang/String;

    .line 3202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "auth/validate_email"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->l:Ljava/lang/String;

    .line 2209
    new-instance p1, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {p1, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    .line 2210
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x1

    const-string v5, "choose_password_type"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->i:I

    .line 2211
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "init mChoosePasswordType "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->i:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->j:Landroid/os/Handler;

    .line 2213
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->h:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d:Lcom/coloros/settings/privacy/a/g$d;

    .line 2214
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->i:I

    const v5, 0x7f1210e7

    const v6, 0x7f1210e4

    const v7, 0x7f1210e5

    packed-switch p1, :pswitch_data_0

    .line 2237
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :pswitch_0
    const-string p1, "startResetConfirmEmail"

    .line 3720
    invoke-static {v4, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3936
    sget-object p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3937
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    const-wide/32 v5, 0x493e0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 3722
    sget-object p1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a:Ljava/lang/String;

    sget-object v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x3

    .line 3724
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d:Lcom/coloros/settings/privacy/a/g$d;

    iget-object v0, v0, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$8;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    return-void

    .line 3580
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "6Ybor28QRRMyftsLi4bN2w"

    .line 3581
    invoke-static {p1, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3582
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    .line 3585
    :cond_3
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->f:Z

    .line 3586
    invoke-static {p1, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    .line 3587
    new-instance v8, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;

    invoke-direct {v8, p0, p1, v3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "7BLE35zGEWfaK8dGEKkeQX"

    const-string v5, "5100"

    const-string v6, "6Ybor28QRRMyftsLi4bN2w"

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->startOperateVerify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V

    return-void

    .line 3496
    :pswitch_2
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0300c5

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 3497
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "privacy_quesion_type_choose"

    .line 3498
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "privacy_quesion_detail_choose"

    .line 3499
    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v4, v0, :cond_4

    .line 3500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object p1, v2

    goto :goto_0

    :cond_4
    if-ltz v4, :cond_5

    .line 3502
    array-length v2, p1

    if-ge v4, v2, :cond_5

    .line 3503
    aget-object p1, p1, v4

    goto :goto_0

    :cond_5
    move-object p1, v3

    .line 3505
    :goto_0
    new-instance v2, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v2, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d02e0

    .line 3506
    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0274

    .line 3507
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ColorEditText;

    .line 3508
    new-instance v6, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f1209d2

    .line 3509
    invoke-virtual {v6, v7}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 3510
    invoke-virtual {v6, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f121035

    .line 3511
    invoke-virtual {v4, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 3512
    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 3513
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f120491

    new-instance v6, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$nFmSQNzLvaXHLWlmoQ05MrtzdAA;

    invoke-direct {v6, p0}, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$nFmSQNzLvaXHLWlmoQ05MrtzdAA;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    .line 3514
    invoke-virtual {p1, v4, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f120f1b

    .line 3515
    invoke-virtual {p1, v4, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 3516
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 3518
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$BfzTbc9szcToPZCCO1B_NI2a8fs;

    invoke-direct {v4, p0, v5, v2, p1}, Lcom/coloros/settings/privacy/-$$Lambda$ChooseGenericPrivacy$BfzTbc9szcToPZCCO1B_NI2a8fs;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/a/g;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3535
    invoke-virtual {v5}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 3536
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x5

    .line 3538
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3540
    :cond_6
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 3541
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3542
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$4;

    invoke-direct {v0, p0, v5, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$4;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/color/support/widget/ColorEditText;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 3467
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.settings.privacy.confirm"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "only_privacy_confirm"

    .line 3468
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x4

    const-string v1, "confirm_password_type"

    .line 3469
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3470
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 3471
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 3304
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d:Lcom/coloros/settings/privacy/a/g$d;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    .line 3305
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->d(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1210e6

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    const p1, 0x7f1210ee

    .line 3308
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$24;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$24;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v1, v6, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    .line 3317
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    const p1, 0x7f1210ed

    .line 3321
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$25;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$25;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v1, v6, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    :cond_9
    const p1, 0x7f1210ef

    .line 3330
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$26;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$26;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v7, v5, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    .line 3283
    :pswitch_5
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d:Lcom/coloros/settings/privacy/a/g$d;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    .line 3284
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_a

    .line 3287
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    :cond_a
    if-eqz v0, :cond_b

    .line 3290
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void

    :cond_b
    const p1, 0x7f1210e8

    .line 3292
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$23;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$23;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v7, v5, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    .line 3243
    :pswitch_6
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->d:Lcom/coloros/settings/privacy/a/g$d;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    .line 3244
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->a(Landroid/content/Context;)Z

    move-result v0

    .line 3245
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez p1, :cond_f

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    const p1, 0x7f1210e9

    .line 3248
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$12;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$12;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v7, v6, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    :cond_c
    if-eqz v0, :cond_d

    const p1, 0x7f1210ea

    .line 3257
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$21;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$21;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v7, v6, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    :cond_d
    if-eqz v1, :cond_e

    const p1, 0x7f1210ec

    .line 3266
    new-instance v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$22;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$22;-><init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V

    invoke-direct {p0, p1, v7, v6, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V

    return-void

    .line 3275
    :cond_e
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b()V

    return-void

    .line 3278
    :cond_f
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 711
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 712
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 193
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
