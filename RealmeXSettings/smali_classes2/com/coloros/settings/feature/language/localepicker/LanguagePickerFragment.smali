.class public Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;
.super Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;
.source "LanguagePickerFragment.java"

# interfaces
.implements Lcom/android/sdk/LocalePicker$b;
.implements Lcom/android/settings/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;
    }
.end annotation


# instance fields
.field private f:Ljava/util/Locale;

.field private g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private h:Landroid/widget/TextView;

.field private final i:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    .line 83
    new-instance v0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$1;-><init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->i:Landroid/database/ContentObserver;

    .line 92
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Lcom/android/sdk/LocalePicker$b;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "LanguagePickerFragment"

    const-string v1, "Old dialog fragment not null!"

    .line 236
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a(Lcom/android/settings/e;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 241
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 11286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    .line 464
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b(I)V

    .line 12286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 12281
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 429
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "user"

    .line 433
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_2

    return v0

    .line 438
    :cond_2
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    goto :goto_0

    .line 445
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_4

    .line 446
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_4

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-eq v1, v3, :cond_4

    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private b(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 10688
    iget v0, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    if-ne v0, p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 476
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->g:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method private b(Ljava/util/Locale;)V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    const/4 p1, 0x1

    .line 249
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(I)V

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppoWizardRun"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c(Ljava/util/Locale;)V

    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/language/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b(I)V

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c(Ljava/util/Locale;)V

    return-void
.end method

.method private c(Ljava/util/Locale;)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 292
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;Ljava/util/Locale;)V

    return-void

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    const/4 p1, 0x2

    .line 295
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(I)V

    return-void
.end method

.method private d()[Lcom/android/sdk/LocalePicker$a;
    .locals 21

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300e0

    .line 303
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300e1

    .line 304
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "persist.sys.oppo.region"

    const-string v7, "CN"

    .line 7057
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 309
    sget-boolean v7, Lcom/coloros/settings/a;->a:Z

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 310
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "my_ZG"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0300e2

    .line 311
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const v4, 0x7f0300e3

    .line 313
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 318
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 319
    array-length v7, v2

    .line 320
    new-array v8, v7, [Lcom/android/sdk/LocalePicker$a;

    const v9, 0x7f0300b3

    .line 322
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_13

    .line 324
    aget-object v12, v2, v10

    .line 325
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    const-string v13, "en-MG"

    .line 327
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "MM"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    if-eqz v5, :cond_4

    .line 328
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "en_MG"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :cond_3
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 333
    :cond_4
    :goto_3
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v13

    const-string v14, "_"

    const-string v15, "-"

    const/16 v16, 0x1

    if-eqz v13, :cond_9

    const-string v13, "en_ZA"

    .line 7101
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v17, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_4
    move/from16 v2, v16

    goto :goto_6

    .line 7114
    :cond_5
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    .line 7120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v9, 0x7f030079

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 7123
    array-length v13, v9

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_5
    if-ge v2, v13, :cond_7

    move-object/from16 v19, v5

    aget-object v5, v9, v2

    move-object/from16 v20, v6

    .line 7124
    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v18, v16

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_5

    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    if-nez v18, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    goto :goto_2

    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 339
    array-length v2, v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_b

    aget-object v6, v1, v5

    .line 340
    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move/from16 v2, v16

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_3

    .line 351
    :cond_c
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    :cond_d
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    .line 356
    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 357
    aget-object v5, v2, v6

    .line 358
    aget-object v2, v2, v16

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    .line 359
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 360
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 361
    aget-object v5, v2, v6

    .line 362
    aget-object v2, v2, v16

    goto :goto_9

    :cond_f
    move-object v2, v5

    .line 365
    :goto_9
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_10

    add-int/lit8 v2, v11, 0x1

    .line 371
    new-instance v5, Lcom/android/sdk/LocalePicker$a;

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v8, v11

    move v11, v2

    goto :goto_c

    :cond_10
    add-int/lit8 v2, v11, -0x1

    .line 378
    aget-object v13, v8, v2

    .line 8081
    iget-object v13, v13, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 378
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 379
    aget-object v5, v8, v2

    .line 9081
    iget-object v5, v5, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 379
    invoke-static {v5, v3, v4}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    aget-object v2, v8, v2

    .line 10077
    iput-object v5, v2, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    .line 386
    invoke-static {v9, v3, v4}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v11, 0x1

    .line 387
    new-instance v12, Lcom/android/sdk/LocalePicker$a;

    invoke-direct {v12, v2, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v12, v8, v11

    :goto_a
    move v11, v5

    goto :goto_c

    :cond_11
    const-string v2, "zz_ZZ"

    .line 391
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "Pseudo..."

    goto :goto_b

    .line 394
    :cond_12
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    add-int/lit8 v5, v11, 0x1

    .line 400
    new-instance v12, Lcom/android/sdk/LocalePicker$a;

    invoke-direct {v12, v2, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v12, v8, v11

    goto :goto_a

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x0

    .line 408
    new-array v1, v11, [Lcom/android/sdk/LocalePicker$a;

    :goto_d
    if-ge v6, v11, :cond_14

    .line 410
    aget-object v2, v8, v6

    aput-object v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 412
    :cond_14
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 414
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v2

    if-nez v2, :cond_15

    .line 415
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)[Lcom/android/sdk/LocalePicker$a;

    move-result-object v0

    goto :goto_e

    .line 417
    :cond_15
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)[Lcom/android/sdk/LocalePicker$a;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public static synthetic lambda$Ab4CK5wp6Ydl3FpmDhmv32gVDEs(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c(I)V

    return-void
.end method

.method public static synthetic lambda$UST-51Lj3Wfug31QAy4VMAvNPBU(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    if-nez v0, :cond_1

    .line 1202
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Lcom/coloros/settings/feature/language/localepicker/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->d()[Lcom/android/sdk/LocalePicker$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/language/localepicker/b;-><init>(Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    goto :goto_0

    .line 1205
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->d()[Lcom/android/sdk/LocalePicker$a;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$a;-><init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/content/Context;[Lcom/android/sdk/LocalePicker$a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 1208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 161
    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/language/localepicker/a;->a(Ljava/util/Locale;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a070a

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f12101e

    .line 139
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    const v0, 0x1020004

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120e6c

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x102000a

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/widget/ListView;I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    if-eqz v0, :cond_3

    .line 214
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 215
    invoke-static {}, Lcom/coloros/settings/feature/language/a;->a()Landroid/content/Intent;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/language/localepicker/a;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    .line 2081
    iget-object p2, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 224
    iput-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    .line 226
    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 3081
    iget-object v0, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 226
    invoke-virtual {p2, v0}, Lcom/coloros/settings/feature/language/localepicker/a;->a(Ljava/util/Locale;)V

    .line 4081
    iget-object p1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 227
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 228
    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c:Landroid/view/MenuItem;

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/language/localepicker/a;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 2

    .line 183
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b(Ljava/util/Locale;)V

    return-void

    .line 187
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_typeface"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "system.default.font"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    const/4 p1, 0x2

    .line 190
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(I)V

    return-void

    .line 192
    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->b(Ljava/util/Locale;)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p1, 0x2ee

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "locale"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$LanguagePickerFragment$Ab4CK5wp6Ydl3FpmDhmv32gVDEs;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$LanguagePickerFragment$Ab4CK5wp6Ydl3FpmDhmv32gVDEs;-><init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;I)V

    .line 5016
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120a59

    .line 5017
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120a56

    .line 5018
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 5019
    new-instance v4, Lcom/coloros/settings/utils/n$1;

    invoke-direct {v4, v3}, Lcom/coloros/settings/utils/n$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5025
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5027
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 5455
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120a0f

    .line 5456
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120a0e

    .line 5457
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120a0d

    .line 5458
    new-instance v3, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$LanguagePickerFragment$UST-51Lj3Wfug31QAy4VMAvNPBU;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/language/localepicker/-$$Lambda$LanguagePickerFragment$UST-51Lj3Wfug31QAy4VMAvNPBU;-><init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;)V

    invoke-virtual {p1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5468
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5469
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 175
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 176
    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c:Landroid/view/MenuItem;

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 122
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "language_new_version_flag"

    .line 1039
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->i:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->f:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
