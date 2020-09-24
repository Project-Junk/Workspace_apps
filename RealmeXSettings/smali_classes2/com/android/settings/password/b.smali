.class public Lcom/android/settings/password/b;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field protected a:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected b:Landroid/app/Activity;

.field protected c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    .line 88
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/b;->a:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    .line 93
    iput-object p2, p0, Lcom/android/settings/password/b;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method protected static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.INTENT"

    .line 450
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v0, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    .line 454
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_1

    .line 456
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-nez v1, :cond_2

    if-eq p0, v2, :cond_3

    :cond_2
    const/high16 p0, 0x800000

    .line 463
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 464
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZJI",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    .line 410
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.header"

    .line 411
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.details"

    .line 412
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    .line 413
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string p3, "com.android.settings.ConfirmCredentials.darkTheme"

    .line 415
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 416
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 417
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    .line 418
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "return_credentials"

    .line 419
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "has_challenge"

    .line 420
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "challenge"

    .line 421
    invoke-virtual {v0, p2, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "android.intent.extra.USER_ID"

    .line 422
    invoke-virtual {v0, p2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 423
    invoke-virtual {v0, p2, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p13, :cond_0

    .line 425
    invoke-virtual {v0, p13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 427
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_2

    const/high16 p1, 0x2000000

    .line 429
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    iget-object p1, p0, Lcom/android/settings/password/b;->c:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/password/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/password/b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/password/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 435
    iget-object p1, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object p2, p0, Lcom/android/settings/password/b;->c:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 439
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/android/settings/password/b;->b(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 440
    iget-object p2, p0, Lcom/android/settings/password/b;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 442
    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/android/settings/password/b;->b(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 443
    iget-object p2, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z
    .locals 15

    move-object v14, p0

    .line 378
    iget-object v0, v14, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move/from16 v11, p10

    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 381
    iget-object v1, v14, Lcom/android/settings/password/b;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_4

    :cond_0
    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_1

    :cond_2
    :goto_0
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_1
    move-object v5, v0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_4

    :cond_3
    if-nez p5, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 383
    :cond_4
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_3

    :cond_5
    :goto_2
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_3
    move-object v5, v0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    :goto_4
    return v0
.end method

.method private a(Ljava/lang/CharSequence;ILandroid/os/Bundle;)Z
    .locals 13

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v4, p1

    move v10, p2

    move-object/from16 v12, p3

    .line 344
    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    .line 1097
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v0, "theme"

    .line 470
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private b(ILjava/lang/CharSequence;Z)Z
    .locals 12

    .line 177
    iget-object v0, p0, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    .line 186
    invoke-static {v0}, Lcom/android/settings/m;->f(Landroid/content/Context;)I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    .line 177
    invoke-virtual/range {v1 .. v11}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/password/b;->a:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public final a(ILjava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/password/b;->b(ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public final a(ILjava/lang/CharSequence;JI)Z
    .locals 12

    move-object v11, p0

    .line 258
    iget-object v0, v11, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    move/from16 v1, p5

    .line 267
    invoke-static {v0, v1}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v8, p3

    .line 258
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 12

    move-object v11, p0

    .line 232
    iget-object v0, v11, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    .line 241
    invoke-static {v0}, Lcom/android/settings/m;->f(Landroid/content/Context;)I

    move-result v10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide/from16 v8, p4

    .line 232
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    .line 326
    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/CharSequence;Z)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/b;->b(ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public final a(ILjava/lang/CharSequence;ZI)Z
    .locals 12

    move-object v11, p0

    .line 148
    iget-object v0, v11, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    move/from16 v1, p4

    .line 157
    invoke-static {v0, v1}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 148
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/CharSequence;I)Z
    .locals 3

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "allow_any_user"

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/password/b;->a(Ljava/lang/CharSequence;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, -0x270f

    const/4 v12, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v11, p3

    .line 360
    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .locals 12

    move-object v11, p0

    .line 287
    iget-object v0, v11, Lcom/android/settings/password/b;->b:Landroid/app/Activity;

    move/from16 v1, p4

    .line 296
    invoke-static {v0, v1}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 287
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method
