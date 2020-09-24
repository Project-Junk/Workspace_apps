.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/c$a;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final B:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/net/NetworkTemplate;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/pm/PackageManager;

.field private final g:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/preference/Preference;

.field private i:Landroidx/preference/Preference;

.field private j:Landroidx/preference/Preference;

.field private k:Landroidx/preference/Preference;

.field private n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private o:Landroidx/preference/PreferenceCategory;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Lcom/android/settings/datausage/b;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/android/settingslib/a;

.field private t:Landroid/content/Intent;

.field private u:Lcom/android/settings/datausage/SpinnerPreference;

.field private v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private w:Lcom/android/settings/datausage/c;

.field private x:Landroid/content/Context;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    .line 376
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 389
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->d:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 440
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->B:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->r:Ljava/util/List;

    return-object p1
.end method

.method private a(ZZ)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v2, v2, Lcom/android/settingslib/a;->a:I

    .line 282
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 281
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->h(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    .line 284
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 289
    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setVisible(Z)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 291
    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setVisible(Z)V

    .line 292
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 293
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->d()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->e()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->a(ZZ)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 301
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->q:Lcom/android/settings/datausage/b;

    return-object p0
.end method

.method private d()Z
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v0, v0, Lcom/android/settingslib/a;->a:I

    .line 328
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->e:Lcom/android/settings/datausage/g$a;

    iget-object v1, v1, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/android/settings/datausage/AppDataUsage;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->z:J

    return-wide v0
.end method

.method private e()Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v1, v1, Lcom/android/settingslib/a;->a:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/c;->a(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->u:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic i(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->o:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppDataUsage"

    return-object v0
.end method

.method final a(I)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->u:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/e;

    .line 3033
    iget-wide v0, p1, Lcom/android/settingslib/net/e;->a:J

    .line 3037
    iget-wide v2, p1, Lcom/android/settingslib/net/e;->b:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 312
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->u:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    move-wide v2, v0

    :goto_1
    add-long v4, v0, v2

    .line 321
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->h:Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->i:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->j:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget-object v0, v0, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->d()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(IZ)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget-object v0, v0, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->e()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x157

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150018

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->f:Landroid/content/pm/PackageManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app_item"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/a;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    if-eqz p1, :cond_1

    const-string v1, "network_template"

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->c:Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_2

    const-string v1, "network_cycles"

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->y:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const-string v1, "selected_cycle"

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x0

    :goto_3
    iput-wide v1, p0, Lcom/android/settings/datausage/AppDataUsage;->z:J

    .line 123
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->c:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    .line 125
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 124
    invoke-static {v1, v2}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->c:Landroid/net/NetworkTemplate;

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    const-string/jumbo v1, "uid"

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_4

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_4
    if-ne p1, v3, :cond_6

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 134
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->c(I)V

    .line 135
    new-instance v1, Lcom/android/settingslib/a;

    invoke-direct {v1, p1}, Lcom/android/settingslib/a;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    .line 136
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/a;->a(I)V

    goto :goto_6

    :cond_7
    move p1, v2

    .line 139
    :goto_5
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget-object v1, v1, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 140
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget-object v1, v1, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->c(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    const-string/jumbo p1, "total_usage"

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->h:Landroidx/preference/Preference;

    const-string p1, "foreground_usage"

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->i:Landroidx/preference/Preference;

    const-string p1, "background_usage"

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->j:Landroidx/preference/Preference;

    const-string p1, "cycle"

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->u:Lcom/android/settings/datausage/SpinnerPreference;

    .line 149
    new-instance p1, Lcom/android/settings/datausage/b;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->u:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v1, v3, v4}, Lcom/android/settings/datausage/b;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/b$b;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->q:Lcom/android/settings/datausage/b;

    .line 1277
    new-instance p1, Lcom/android/settingslib/net/g;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settingslib/net/g;-><init>(Landroid/content/Context;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v1, v1, Lcom/android/settingslib/a;->a:I

    const-string v3, "app_list"

    const-string v4, "restrict_background"

    const-string v5, "app_settings"

    const-string/jumbo v6, "unrestricted_data_saver"

    const/4 v7, 0x1

    if-lez v1, :cond_f

    .line 154
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v1, v1, Lcom/android/settingslib/a;->a:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 155
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v1, v1, Lcom/android/settingslib/a;->a:I

    invoke-virtual {p1, v1, v7}, Lcom/android/settingslib/net/g;->a(IZ)Lcom/android/settingslib/net/f;

    move-result-object p1

    .line 156
    iget-object v1, p1, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->p:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object p1, p1, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->a:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 159
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    .line 161
    :cond_9
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_a

    .line 163
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->f:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    .line 164
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v8, v8, Lcom/android/settingslib/a;->a:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 163
    invoke-virtual {p1, v1, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->p:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->a:Ljava/lang/CharSequence;

    .line 167
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :catch_0
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 172
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 174
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    :goto_7
    new-instance p1, Lcom/android/settings/datausage/c;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->x:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    .line 177
    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->k:Landroidx/preference/Preference;

    .line 179
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->t:Landroid/content/Intent;

    .line 180
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->t:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 184
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->t:Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->t:Landroid/content/Intent;

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    move v2, v7

    :cond_c
    if-nez v2, :cond_d

    .line 192
    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 193
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->k:Landroidx/preference/Preference;

    .line 196
    :cond_d
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-le p1, v7, :cond_e

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->o:Landroidx/preference/PreferenceCategory;

    .line 198
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->B:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void

    .line 201
    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 204
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v1, v1, Lcom/android/settingslib/a;->a:I

    invoke-virtual {p1, v1, v7}, Lcom/android/settingslib/net/g;->a(IZ)Lcom/android/settingslib/net/f;

    move-result-object p1

    .line 206
    iget-object v1, p1, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->p:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object p1, p1, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->a:Ljava/lang/CharSequence;

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->b:Ljava/lang/String;

    .line 210
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 211
    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 212
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 230
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->b(Lcom/android/settings/datausage/c$a;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->n:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 239
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v0, v0, Lcom/android/settingslib/a;->a:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_0

    move v1, v2

    .line 2115
    :cond_0
    iget-object v4, p1, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 2116
    iget-object v4, p1, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p2, :cond_1

    .line 2118
    iget-object p2, p1, Lcom/android/settings/datausage/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p1, p1, Lcom/android/settings/datausage/c;->a:Landroid/content/Context;

    const/16 v0, 0x18c

    invoke-virtual {p2, p1, v0, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->c()V

    return v2

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->v:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-ne p1, v0, :cond_3

    .line 243
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v0, v0, Lcom/android/settingslib/a;->a:I

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settings/datausage/c;->a(ILjava/lang/String;Z)V

    return v2

    :cond_3
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->k:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->t:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v2, v2, Lcom/android/settingslib/a;->a:I

    .line 254
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 253
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 219
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->w:Lcom/android/settings/datausage/c;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->a(Lcom/android/settings/datausage/c$a;)V

    .line 223
    :cond_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->d:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 225
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->c()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 341
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 343
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->g:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->f:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v2, v2, Lcom/android/settingslib/a;->a:I

    .line 348
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 347
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 350
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping UID because cannot find package "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppDataUsage"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 354
    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->s:Lcom/android/settingslib/a;

    iget v2, v2, Lcom/android/settingslib/a;->a:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 356
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 358
    invoke-static {v3, p0, p2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 3214
    iput v1, p2, Lcom/android/settings/widget/b;->f:I

    .line 4197
    iput-boolean v2, p2, Lcom/android/settings/widget/b;->g:Z

    .line 362
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->p:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->a:Ljava/lang/CharSequence;

    .line 5163
    iput-object v0, p2, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 5209
    iput-object p1, p2, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
