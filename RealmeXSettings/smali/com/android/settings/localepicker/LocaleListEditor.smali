.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"


# instance fields
.field private d:Lcom/android/settings/localepicker/a;

.field private e:Landroid/view/Menu;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_locale"

    .line 66
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 169
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/a;->a(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->e()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Z)V

    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/a;->getItemCount()I

    move-result v2

    const v3, 0x1040013

    if-ne v0, v2, :cond_1

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    .line 191
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12081f

    .line 192
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12081e

    .line 193
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 194
    invoke-virtual {v0, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 199
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100018

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    .line 213
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120820

    .line 215
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 216
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 222
    invoke-virtual {v0, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 240
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->e:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 299
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 301
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/a;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 304
    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->i:Z

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x158

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "localeInfo"

    .line 160
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 162
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    .line 4255
    iget-object v2, v1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    iget-object v0, v1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/a;->notifyItemInserted(I)V

    .line 4257
    invoke-virtual {v1}, Lcom/android/settings/localepicker/a;->b()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->e()V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 1262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 1264
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1265
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 1266
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/android/settings/localepicker/a;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/localepicker/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f120c08

    .line 253
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x4

    .line 254
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0806ca

    .line 255
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->e:Landroid/view/Menu;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->e()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 87
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    const v0, 0x7f0d01ad

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0a0223

    .line 1272
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1273
    new-instance v0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/a;)V

    const/4 v1, 0x1

    .line 1274
    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 1275
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1277
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    .line 2140
    iput-object p3, v0, Lcom/android/settings/localepicker/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 2141
    iget-object v0, v0, Lcom/android/settings/localepicker/a;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1279
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p3, 0x7f0a005b

    .line 1281
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->f:Landroid/view/View;

    .line 1282
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->f:Landroid/view/View;

    new-instance p3, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {p3, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Z)V

    return v2

    .line 152
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 139
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    if-eqz p1, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->d()V

    goto :goto_1

    .line 142
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Z)V

    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->i:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->i:Z

    .line 2231
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    .line 100
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->i:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const v0, 0x7f120bdc

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->e()V

    return-void

    .line 105
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->i:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->e()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    const-string v1, "localeRemoveMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    const-string v1, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    if-eqz p1, :cond_2

    .line 3317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    iget-object v0, v0, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 3319
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3320
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "selectedLocales"

    .line 3323
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "localeRemoveMode"

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    const-string v1, "showingLocaleRemoveDialog"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->g:Z

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->d:Lcom/android/settings/localepicker/a;

    if-eqz p1, :cond_3

    .line 2333
    iget-boolean v2, v1, Lcom/android/settings/localepicker/a;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "selectedLocales"

    .line 2335
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2336
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2339
    :cond_1
    iget-object v2, v1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 2340
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    .line 2342
    :cond_2
    iget-object p1, v1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/localepicker/a;->notifyItemRangeChanged(II)V

    .line 122
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->h:Z

    if-eqz p1, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->d()V

    :cond_4
    return-void
.end method
