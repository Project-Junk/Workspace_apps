.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;
.source "ProcessStatsUi.java"


# static fields
.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field static final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation
.end field

.field static final l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field f:Landroid/content/pm/PackageManager;

.field g:Z

.field private m:Landroidx/preference/PreferenceGroup;

.field private n:Landroid/view/MenuItem;

.field private o:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 149
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->h:[I

    const/4 v0, 0x1

    .line 157
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/settings/applications/ProcessStatsUi;->i:[I

    const/4 v0, 0x3

    .line 161
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->j:[I

    .line 213
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->k:Ljava/util/Comparator;

    .line 226
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->l:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x8
        0x5
        0x6
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;-><init>()V

    return-void
.end method

.method public static c()[I
    .locals 1

    .line 250
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->b:[I

    return-object v0
.end method

.method public static f()[J
    .locals 1

    .line 274
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->a:[J

    return-object v0
.end method

.method public static g()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->l:Ljava/util/Comparator;

    return-object v0
.end method

.method public static h()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/x;",
            ">;"
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->k:Ljava/util/Comparator;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->o:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->n:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private j()Lcom/android/settings/applications/ProcessStatsUiAdpator;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 243
    const-class v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 244
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/android/settings/applications/ProcessStatsUiAdpator;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->addSpinnerHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->e:I

    return-void
.end method

.method public final b()V
    .locals 20

    move-object/from16 v0, p0

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->refreshUi()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->m:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 178
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->m:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 179
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->m:Landroidx/preference/PreferenceGroup;

    iget-boolean v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    if-eqz v3, :cond_1

    const v3, 0x7f120d43

    goto :goto_0

    :cond_1
    const v3, 0x7f1202a0

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->setTitle(I)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 183
    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->d:Lcom/android/settings/applications/v;

    .line 2118
    iget-object v3, v3, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 185
    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->d:Lcom/android/settings/applications/v;

    .line 2137
    iget-object v4, v4, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 188
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    .line 189
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/x;

    .line 190
    invoke-virtual {v7}, Lcom/android/settings/applications/x;->a()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 193
    :cond_2
    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->l:Ljava/util/Comparator;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->k:Ljava/util/Comparator;

    :goto_2
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    if-eqz v5, :cond_4

    iget-wide v5, v3, Lcom/android/settings/applications/v$a;->c:D

    goto :goto_3

    :cond_4
    iget-wide v5, v3, Lcom/android/settings/applications/v$a;->g:D

    iget-wide v7, v3, Lcom/android/settings/applications/v$a;->h:D

    mul-double/2addr v5, v7

    .line 202
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 203
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/settings/applications/x;

    .line 204
    new-instance v14, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1, v7}, Lcom/android/settings/applications/x;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 206
    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->f:Landroid/content/pm/PackageManager;

    iget-wide v12, v3, Lcom/android/settings/applications/v$a;->h:D

    iget-wide v10, v3, Lcom/android/settings/applications/v$a;->j:D

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    xor-int/lit8 v16, v7, 0x1

    move-object v7, v14

    move-wide/from16 v17, v10

    move-wide v10, v5

    move-object/from16 v19, v1

    move-object v1, v14

    move-wide/from16 v14, v17

    invoke-virtual/range {v7 .. v16}, Lcom/android/settings/applications/ProcessStatsPreference;->a(Lcom/android/settings/applications/x;Landroid/content/pm/PackageManager;DDDZ)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 209
    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->m:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v19

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final d()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->e:I

    return v0
.end method

.method public final e()Lcom/android/settings/applications/v;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->d:Lcom/android/settings/applications/v;

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a92

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->f:Landroid/content/pm/PackageManager;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object p1

    const v0, 0x7f1500ff

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->getUserSettingsXml(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    const-string p1, "app_list"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->m:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 80
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f121508

    .line 81
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->n:Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f121509

    .line 82
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->o:Landroid/view/MenuItem;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->i()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onDestroy()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->unbind()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 99
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->b()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->i()V

    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/android/settings/applications/ProcessStatsPreference;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 136
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->d:Lcom/android/settings/applications/v;

    .line 1118
    iget-object v1, v1, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 2057
    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsPreference;->a:Lcom/android/settings/applications/x;

    .line 137
    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/ProcessStatsUi;->a(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/v$a;Lcom/android/settings/applications/x;)V

    .line 139
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->j()Lcom/android/settings/applications/ProcessStatsUiAdpator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/ProcessStatsUiAdpator;->displayPreference(Landroidx/preference/PreferenceScreen;)Z

    return-void
.end method
