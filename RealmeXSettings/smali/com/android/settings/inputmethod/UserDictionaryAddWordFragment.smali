.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"


# instance fields
.field protected a:Lcom/android/settings/inputmethod/c;

.field protected b:Landroid/view/View;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->c:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f12074e

    .line 84
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0806ca

    .line 85
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x5

    .line 86
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d038c

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->c:Z

    .line 65
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/android/settings/inputmethod/c;

    iget-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/settings/inputmethod/c;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p2, Lcom/android/settings/inputmethod/c;

    iget-object p3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->b:Landroid/view/View;

    invoke-direct {p2, p3, p1}, Lcom/android/settings/inputmethod/c;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/c;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    .line 1265
    iget-object p3, p3, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    .line 77
    invoke-static {p2, p3}, Lcom/android/settings/inputmethod/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->b:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 2111
    iget v2, p1, Lcom/android/settings/inputmethod/c;->a:I

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2113
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2114
    iget-object v2, p1, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/inputmethod/c;->d:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 102
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->c:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->c:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 116
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 2122
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->a:Lcom/android/settings/inputmethod/c;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 2238
    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v2

    .line 2240
    iget-object v3, v0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2243
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const-string v4, ""

    .line 2244
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2245
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    iget-object v6, v0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2249
    iget-object v6, v0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2250
    invoke-static {v1, v5, v3}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2252
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2254
    invoke-static {v1, v5, v3}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 2256
    :cond_1
    iget-object v0, v0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2258
    invoke-static {v1, v5, v4}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2260
    :cond_2
    new-instance v0, Lcom/android/settings/inputmethod/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 2126
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method
