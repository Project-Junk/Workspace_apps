.class final Lcom/android/settings/print/PrintSettingsFragment$a;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;B)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$a;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 295
    new-instance p1, Lcom/android/settings/print/PrintSettingsFragment$b;

    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p2}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$b;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 290
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 1306
    :cond_0
    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "print_jobs_category"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1307
    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1310
    :cond_1
    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1311
    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->e(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "PrintSettingsFragment"

    const-string v2, "No preference context, skip adding print jobs"

    .line 1313
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1317
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 1318
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 1320
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 1321
    const-class v6, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    const v7, 0x7f1210a5

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v6, v11, :cond_6

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    goto :goto_1

    .line 1338
    :cond_3
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f1210a9

    new-array v13, v12, [Ljava/lang/Object;

    .line 1340
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1338
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1343
    :cond_4
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1344
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f1210a3

    new-array v13, v12, [Ljava/lang/Object;

    .line 1346
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1344
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1348
    :cond_5
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 1350
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1348
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1327
    :cond_6
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1328
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f1210b7

    new-array v13, v12, [Ljava/lang/Object;

    .line 1330
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1328
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1332
    :cond_7
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 1334
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1332
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1355
    :goto_1
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f1210ac

    new-array v13, v11, [Ljava/lang/Object;

    .line 1356
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1357
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x3

    .line 1356
    invoke-static/range {v15 .. v20}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v13, v12

    .line 1355
    invoke-virtual {v6, v7, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-array v7, v12, [I

    const v12, 0x1010429

    aput v12, v7, v5

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1362
    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1363
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1365
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    if-eq v6, v11, :cond_9

    if-eq v6, v10, :cond_9

    if-eq v6, v9, :cond_8

    if-eq v6, v8, :cond_8

    goto :goto_2

    .line 1377
    :cond_8
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "com.android.internal.R.drawable.ic_print_error"

    .line 1378
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1377
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1379
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1380
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1368
    :cond_9
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "com.android.internal.R.drawable.ic_print"

    .line 1369
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1368
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1370
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1371
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1385
    :goto_2
    invoke-virtual {v4}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1386
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    return-void

    .line 1304
    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 395
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$a;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->d(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
