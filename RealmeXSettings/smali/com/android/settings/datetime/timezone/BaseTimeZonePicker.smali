.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BaseTimeZonePicker.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private e:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Lcom/android/settings/datetime/timezone/model/b;

.field private h:Landroid/widget/SearchView;


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->a:I

    .line 72
    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->b:I

    .line 73
    iput-boolean p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->c:Z

    .line 74
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->d:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/android/settings/datetime/timezone/model/b;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end method

.method protected final b()Ljava/util/Locale;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/android/settings/datetime/timezone/model/b;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->g:Lcom/android/settings/datetime/timezone/model/b;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->g:Lcom/android/settings/datetime/timezone/model/b;

    .line 103
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->g:Lcom/android/settings/datetime/timezone/model/b;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->a(Lcom/android/settings/datetime/timezone/model/b;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->e:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 104
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->e:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->a:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0e001c

    .line 122
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a06f2

    .line 124
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    .line 127
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    iget v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->b:I

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    invoke-virtual {p2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 130
    iget-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->d:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 132
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {p1, v1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    const-string p2, "com.android.internal.R.id.search_src_text"

    .line 139
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 140
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    .line 141
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 140
    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->h:Landroid/widget/SearchView;

    const-string p2, "com.android.internal.R.id.search_edit_frame"

    .line 143
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 147
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d036f

    .line 87
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a054d

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->e:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$0T0m0RYh3wJ_v1_FwHzU0BQfwGc;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$0T0m0RYh3wJ_v1_FwHzU0BQfwGc;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;)V

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, p3, v1, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->e:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v1, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;

    invoke-direct {v1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V

    iput-object v1, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;

    .line 1145
    :cond_0
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;

    .line 160
    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$b;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
