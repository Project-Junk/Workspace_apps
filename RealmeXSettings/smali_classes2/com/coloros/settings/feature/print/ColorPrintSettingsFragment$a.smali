.class final Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;
.super Ljava/lang/Object;
.source "ColorPrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;
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
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;B)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)V

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

    .line 281
    new-instance p1, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;

    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 276
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 1289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1290
    iget-object v2, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->d(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "ColorPrintSettingsFragment"

    const-string v2, "No preference context, skip adding print jobs"

    .line 1292
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1296
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 1297
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 1299
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 1300
    const-class v6, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    const v7, 0x7f1210a5

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v6, v11, :cond_4

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_2

    if-eq v6, v8, :cond_1

    goto :goto_1

    .line 1317
    :cond_1
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    const v7, 0x7f1210a9

    new-array v13, v12, [Ljava/lang/Object;

    .line 1319
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1317
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1322
    :cond_2
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1323
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    const v7, 0x7f1210a3

    new-array v13, v12, [Ljava/lang/Object;

    .line 1325
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1323
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1327
    :cond_3
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 1329
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1327
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1306
    :cond_4
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1307
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    const v7, 0x7f1210b7

    new-array v13, v12, [Ljava/lang/Object;

    .line 1309
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1307
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1311
    :cond_5
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 1313
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1311
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1334
    :goto_1
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    const v7, 0x7f1210ac

    new-array v13, v11, [Ljava/lang/Object;

    .line 1335
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 1336
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x3

    .line 1335
    invoke-static/range {v15 .. v20}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v13, v12

    .line 1334
    invoke-virtual {v6, v7, v13}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v6}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-array v7, v12, [I

    const v12, 0x1010429

    aput v12, v7, v5

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1341
    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1342
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1344
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    if-eq v6, v11, :cond_7

    if-eq v6, v10, :cond_7

    if-eq v6, v9, :cond_6

    if-eq v6, v8, :cond_6

    goto :goto_2

    .line 1356
    :cond_6
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v6}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "com.android.internal.R.drawable.ic_print_error"

    .line 1357
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1356
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1358
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1359
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1347
    :cond_7
    iget-object v6, v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$a;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v6}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "com.android.internal.R.drawable.ic_print"

    .line 1348
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1347
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1349
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1350
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    :goto_2
    invoke-virtual {v4}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1367
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
