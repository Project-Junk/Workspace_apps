.class public Lcom/android/settings/inputmethod/UserDictionarySettings;
.super Landroidx/fragment/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/instrumentation/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionarySettings$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settingslib/core/instrumentation/b;"
    }
.end annotation


# instance fields
.field protected a:Landroid/database/Cursor;

.field protected b:Ljava/lang/String;

.field private c:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mode"

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "word"

    .line 196
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "shortcut"

    .line 197
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->b:Ljava/lang/String;

    const-string p2, "locale"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryAddWordFragment;

    .line 202
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f121812

    .line 2063
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 4

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 235
    sget-object p1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    const-string/jumbo p0, "word=? AND shortcut is null OR shortcut=\'\'"

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    const-string/jumbo p0, "word=? AND shortcut=?"

    invoke-virtual {p2, v0, p0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12181e

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x202

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance p1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/d;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->c:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "locale"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v1

    .line 102
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->b:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f121814

    .line 163
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f080461

    .line 164
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 166
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f121822

    .line 114
    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p3, "com.android.internal.R.layout.preference_list_fragment"

    .line 118
    invoke-static {p3}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1213
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 1214
    :cond_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1216
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1218
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    const-string/jumbo p4, "word"

    .line 1219
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    .line 1218
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1223
    :goto_1
    iget-object p4, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    if-nez p4, :cond_2

    goto :goto_2

    .line 1224
    :cond_2
    invoke-interface {p4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1226
    iget-object p3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 1228
    :cond_3
    iget-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    const-string p3, "shortcut"

    .line 1229
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 1228
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-eqz p1, :cond_4

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .line 55
    check-cast p2, Landroid/database/Cursor;

    .line 2252
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    .line 2253
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 3145
    new-instance p2, Lcom/android/settings/inputmethod/UserDictionarySettings$a;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->a:Landroid/database/Cursor;

    const-string/jumbo v2, "word"

    const-string v3, "shortcut"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/android/settings/inputmethod/UserDictionarySettings$a;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 2253
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->c:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->c:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a()V

    return-void
.end method
