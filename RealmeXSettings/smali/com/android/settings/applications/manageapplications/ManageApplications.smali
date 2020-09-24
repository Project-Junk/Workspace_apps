.class public Lcom/android/settings/applications/manageapplications/ManageApplications;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$b;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$a;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/android/settings/notification/k;

.field private B:Lcom/android/settings/applications/manageapplications/f;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field private F:I

.field private G:Landroid/view/View;

.field private H:I

.field private I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

.field a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public b:Z

.field public c:Lcom/coloros/settingslib/applications/ApplicationsState;

.field public d:I

.field public e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field f:Ljava/lang/CharSequence;

.field h:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public j:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field private n:Lcom/android/settings/applications/manageapplications/a;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/SearchView;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/view/Menu;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/Spinner;

.field private y:Landroid/app/usage/IUsageStatsManager;

.field private z:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 226
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->g:Ljava/util/Set;

    .line 1716
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const v0, 0x7f0a062e

    .line 188
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/a;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/a;)Lcom/android/settings/applications/manageapplications/a;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    return-object p1
.end method

.method private a(Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 676
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v6

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 676
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    if-nez v0, :cond_0

    .line 1731
    const-class v0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    .line 1732
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->bind(Ljava/lang/Object;)V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->x:Landroid/widget/Spinner;

    return-object p0
.end method

.method private synthetic c()V
    .locals 2

    .line 10624
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10628
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    packed-switch v0, :pswitch_data_0

    .line 10669
    :pswitch_0
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v1, 0x7f1201f8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    goto :goto_0

    .line 10662
    :pswitch_1
    const-class v0, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    const v1, 0x7f1204d7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10659
    :pswitch_2
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f121598

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10656
    :pswitch_3
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f12158f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10653
    :pswitch_4
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f120a38

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10648
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->startSourcesDetailsFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10649
    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    const v1, 0x7f120b2a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10645
    :pswitch_6
    const-class v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    const v1, 0x7f121ab0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10642
    :pswitch_7
    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    const v1, 0x7f120fe8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10639
    :pswitch_8
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return-void

    .line 10633
    :pswitch_9
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f12179a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10636
    :pswitch_a
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f12159a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    return-void

    .line 10630
    :pswitch_b
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f120f0d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/lang/Class;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/settings/applications/manageapplications/ManageApplications;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->H:I

    return p0
.end method

.method static synthetic e(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->G:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->o:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->y:Landroid/app/usage/IUsageStatsManager;

    return-object p0
.end method

.method static synthetic i(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->z:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic j(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/k;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->A:Lcom/android/settings/notification/k;

    return-object p0
.end method

.method static synthetic k(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/SearchView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->q:Landroid/widget/SearchView;

    return-object p0
.end method

.method static synthetic l(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$w2ip_fmjAijaWRmvGLBPQrNIlf8(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->c()V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->m:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 748
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->updateOptionsMenu()V

    .line 749
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a006f

    .line 752
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a062e

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    if-eq v3, v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a0631

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    if-eq v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a0606

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const/4 v3, 0x5

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-eq v2, v3, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 761
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a02fe

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-eq v2, v3, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a0564

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a0630

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 768
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v2, 0x7f0a062f

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1741
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1742
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1743
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v1, :cond_0

    .line 1744
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 1747
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1748
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v3

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->checkApplicationInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1749
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1753
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void

    .line 1755
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 2

    .line 512
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v1, 0xdd

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x152

    return v0

    :pswitch_2
    const/16 v0, 0x444

    return v0

    :pswitch_3
    const/16 v0, 0x3a7

    return v0

    :pswitch_4
    const/16 v0, 0x346

    return v0

    :pswitch_5
    const/16 v0, 0x328

    return v0

    :pswitch_6
    return v1

    :pswitch_7
    const/16 v0, 0xb8

    return v0

    :pswitch_8
    const/16 v0, 0x5f

    return v0

    .line 518
    :pswitch_9
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x347

    return v0

    :cond_0
    const/16 v0, 0xb6

    return v0

    :pswitch_a
    const/16 v0, 0x85

    return v0

    :pswitch_b
    const/16 v0, 0x41

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 606
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 607
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-ne p1, p2, :cond_0

    .line 608
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/applications/e;->b(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 613
    :cond_1
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 614
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->c(Ljava/lang/String;I)V

    goto :goto_1

    .line 611
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/applications/e;->b(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getChildAdapterRealPosition(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string p1, "ManageApplications"

    const-string v0, "Cannot find position for child, skipping onClick handling"

    .line 829
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 9496
    iget-object v2, v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-le v1, v0, :cond_4

    .line 833
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 9500
    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 834
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->r:Ljava/lang/String;

    .line 836
    iget-object v2, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    .line 837
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p0, v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->performItemClick(Landroid/view/View;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 843
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->b(Landroid/app/Activity;)V

    .line 844
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$w2ip_fmjAijaWRmvGLBPQrNIlf8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$w2ip_fmjAijaWRmvGLBPQrNIlf8;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 847
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 848
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/settings/applications/manageapplications/c;->a(Landroidx/fragment/app/Fragment;)V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 260
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v2

    .line 261
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v3

    .line 260
    invoke-virtual {v2, v3, v1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getApplicationsState(Lcom/coloros/settingslib/applications/ApplicationsState;Landroid/app/Activity;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 263
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 266
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v4

    const v5, 0x7f1201f8

    invoke-virtual {v4, v5}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getApplicationListLabel(I)I

    move-result v4

    const-string v6, ":settings:show_fragment_title_resid"

    .line 265
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_0

    const-string v6, "classname"

    .line 267
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    .line 269
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 271
    :cond_1
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "storageType"

    const/4 v8, -0x1

    const v9, 0x7f0a0631

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "volumeUuid"

    .line 272
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->C:Ljava/lang/String;

    .line 274
    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->D:I

    const/4 v2, 0x3

    .line 275
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    goto :goto_1

    .line 278
    :cond_2
    iput v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 280
    :goto_1
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    goto/16 :goto_2

    .line 281
    :cond_3
    const-class v2, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 282
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v4, 0x7f1211ad

    goto/16 :goto_2

    .line 284
    :cond_4
    const-class v2, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 285
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 287
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const v4, 0x7f120ae0

    goto/16 :goto_2

    .line 289
    :cond_5
    const-class v2, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 290
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v4, 0x7f121651

    goto/16 :goto_2

    .line 292
    :cond_6
    const-class v2, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 293
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v4, 0x7f121aaa

    goto/16 :goto_2

    .line 295
    :cond_7
    const-class v2, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 296
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v4, 0x7f120b2a

    .line 298
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->setShowSystem()V

    goto/16 :goto_2

    .line 299
    :cond_8
    const-class v2, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 300
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 301
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    goto/16 :goto_2

    .line 302
    :cond_9
    const-class v2, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 303
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 304
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    goto :goto_2

    .line 305
    :cond_a
    const-class v2, Lcom/android/settings/Settings$PhotosStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    .line 306
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 307
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    .line 308
    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->D:I

    goto :goto_2

    .line 309
    :cond_b
    const-class v2, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 310
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v4, 0x7f1204d7

    goto :goto_2

    .line 312
    :cond_c
    const-class v2, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 313
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const-string/jumbo v2, "usagestats"

    .line 315
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 314
    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->y:Landroid/app/usage/IUsageStatsManager;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->z:Landroid/os/UserManager;

    .line 317
    new-instance v2, Lcom/android/settings/notification/k;

    invoke-direct {v2}, Lcom/android/settings/notification/k;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->A:Lcom/android/settings/notification/k;

    const v2, 0x7f0a0630

    .line 318
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    const v4, 0x7f1201e6

    goto :goto_2

    :cond_d
    if-ne v4, v8, :cond_e

    .line 322
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getApplicationListLabel(I)I

    move-result v2

    move v4, v2

    .line 324
    :cond_e
    iput v10, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    .line 326
    :goto_2
    invoke-static {}, Lcom/android/settings/applications/manageapplications/b;->a()Lcom/android/settings/applications/manageapplications/b;

    move-result-object v2

    .line 327
    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/b;->a(I)I

    move-result v5

    .line 2220
    iget-object v2, v2, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    aget-object v2, v2, v5

    .line 328
    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    if-eqz v3, :cond_f

    const-string/jumbo v2, "workProfileOnly"

    .line 329
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_f
    move v2, v10

    :goto_3
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->E:Z

    if-eqz v3, :cond_10

    const-string/jumbo v2, "workId"

    .line 330
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_10
    move v2, v8

    :goto_4
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->F:I

    .line 331
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expand_search_view"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->k:Z

    if-eqz p1, :cond_12

    .line 334
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    const-string v5, "sortOrder"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    .line 335
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const-string v5, "showSystem"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const/4 v2, 0x2

    const-string v5, "filterType"

    .line 337
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->H:I

    .line 338
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->k:Z

    const-string v2, "key_ui_mode"

    .line 340
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v8, :cond_11

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq p1, v2, :cond_11

    goto :goto_5

    :cond_11
    move v0, v10

    :goto_5
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->l:Z

    :cond_12
    const p1, 0x7f120b4a

    .line 345
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->f:Ljava/lang/CharSequence;

    .line 347
    new-instance p1, Lcom/android/settings/applications/manageapplications/f;

    invoke-direct {p1, v1}, Lcom/android/settings/applications/manageapplications/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->B:Lcom/android/settings/applications/manageapplications/f;

    if-lez v4, :cond_13

    .line 350
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 352
    :cond_13
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onCreate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8718
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const v2, 0x7f120a83

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v2, 0x7f120a7e

    goto :goto_0

    :pswitch_1
    const v2, 0x7f120a86

    goto :goto_0

    :pswitch_2
    const v2, 0x7f120a84

    goto :goto_0

    :pswitch_3
    const v2, 0x7f120a82

    goto :goto_0

    :pswitch_4
    const v2, 0x7f120a81

    goto :goto_0

    :pswitch_5
    const v2, 0x7f120a87

    goto :goto_0

    :pswitch_6
    const v2, 0x7f120a80

    goto :goto_0

    :pswitch_7
    const v2, 0x7f120acb

    goto :goto_0

    :pswitch_8
    const v2, 0x7f120a85

    goto :goto_0

    :pswitch_9
    const v2, 0x7f120a8d

    .line 689
    :goto_0
    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v1}, Lcom/android/settingslib/c;->a(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 690
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    const v0, 0x7f0e0009

    .line 691
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a05bd

    .line 693
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 695
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->q:Landroid/widget/SearchView;

    .line 696
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->q:Landroid/widget/SearchView;

    const v0, 0x7f121371

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 697
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->q:Landroid/widget/SearchView;

    invoke-virtual {p2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 698
    iget-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->k:Z

    if-eqz p2, :cond_2

    .line 699
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string v0, "ManageApplications"

    const-string v1, "onCreateView"

    .line 375
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f0d01b4

    .line 377
    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 379
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    return-object p1

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    const v4, 0x7f0d01b3

    invoke-virtual {v0, v4}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getLayoutResId(I)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    .line 383
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    const v0, 0x7f0a03b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->o:Landroid/view/View;

    .line 384
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    const v0, 0x7f0a03a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->p:Landroid/view/View;

    .line 385
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->p:Landroid/view/View;

    const/4 v0, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    const v5, 0x1020004

    .line 387
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->G:Landroid/view/View;

    .line 389
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    invoke-direct {p1, v5, p0, v6, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/a;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_1

    .line 392
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v5, "hasEntries"

    .line 393
    invoke-virtual {p3, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 392
    invoke-static {p1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 394
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v5, "hasBridge"

    .line 395
    invoke-virtual {p3, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 394
    invoke-static {p1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 397
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->E:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->F:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->s:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 398
    :goto_0
    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->D:I

    if-ne v5, v4, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 400
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v7, Lcom/android/settings/applications/manageapplications/d;

    new-instance v8, Lcom/android/settingslib/applications/f;

    invoke-direct {v8, v5}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->C:Ljava/lang/String;

    .line 405
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v7, v5, v8, v9, p1}, Lcom/android/settings/applications/manageapplications/d;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 400
    invoke-virtual {v6, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/c;)V

    goto :goto_1

    :cond_3
    if-ne v5, v0, :cond_4

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 408
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v7, Lcom/android/settings/applications/manageapplications/e;

    new-instance v8, Lcom/android/settingslib/applications/f;

    invoke-direct {v8, v5}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->C:Ljava/lang/String;

    .line 413
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v7, v5, v8, v9, p1}, Lcom/android/settings/applications/manageapplications/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 408
    invoke-virtual {v6, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/c;)V

    .line 415
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->p:Landroid/view/View;

    const v5, 0x7f0a00b5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 417
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 417
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 419
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5, v6}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getRecyclerViewAdapter(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 424
    :cond_5
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_6

    .line 425
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v4, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 2437
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2438
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    const v5, 0x7f0a04e2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 2439
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v5, 0x7f0d004a

    .line 2440
    invoke-virtual {p1, v5, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->h:Landroid/view/View;

    .line 2441
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->h:Landroid/view/View;

    const v5, 0x7f0a0293

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->x:Landroid/widget/Spinner;

    .line 2442
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    .line 2443
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const v5, 0x7f0d00f0

    invoke-virtual {p1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->setDropDownViewResource(I)V

    .line 2444
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->x:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2446
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->x:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2456
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->h:Landroid/view/View;

    invoke-virtual {p2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 2458
    invoke-static {}, Lcom/android/settings/applications/manageapplications/b;->a()Lcom/android/settings/applications/manageapplications/b;

    move-result-object p1

    .line 2459
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/b;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2460
    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v6, 0x9

    if-nez v5, :cond_7

    .line 2461
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_7

    .line 2462
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2463
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2464
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2467
    :cond_7
    iget p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-ne p2, v4, :cond_8

    .line 2468
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2469
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2470
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2471
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->c(I)V

    .line 2473
    :cond_8
    iget p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x5

    if-ne p2, v1, :cond_9

    .line 2474
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p2, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->b(I)V

    .line 2477
    :cond_9
    iget p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->D:I

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->C:Ljava/lang/String;

    .line 2490
    new-instance v5, Lcom/coloros/settingslib/applications/ApplicationsState$i;

    invoke-direct {v5, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$i;-><init>(Ljava/lang/String;)V

    if-ne p2, v0, :cond_c

    if-ne v1, v4, :cond_a

    .line 2493
    new-instance p2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->X:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {p2, v0, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    :goto_2
    move-object v2, p2

    goto :goto_3

    :cond_a
    if-nez v1, :cond_b

    .line 2495
    new-instance p2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->aa:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {p2, v0, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_2

    :cond_b
    move-object v2, v5

    goto :goto_3

    :cond_c
    if-ne p2, v6, :cond_d

    .line 2500
    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object p2, Lcom/coloros/settingslib/applications/ApplicationsState;->W:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, p2, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_3

    :cond_d
    const/16 v0, 0xa

    if-ne p2, v0, :cond_e

    .line 2502
    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object p2, Lcom/coloros/settingslib/applications/ApplicationsState;->Y:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, p2, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_3

    :cond_e
    const/16 v0, 0xb

    if-ne p2, v0, :cond_f

    .line 2504
    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object p2, Lcom/coloros/settingslib/applications/ApplicationsState;->Z:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, p2, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    .line 2478
    :cond_f
    :goto_3
    iget-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->E:Z

    if-eqz p2, :cond_10

    .line 3220
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/b;->a:[Lcom/android/settings/applications/manageapplications/a;

    aget-object p1, p1, v6

    .line 4049
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2480
    new-instance p2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    invoke-direct {p2, v2, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_4

    :cond_10
    move-object p2, v2

    :goto_4
    if-eqz p2, :cond_11

    .line 2483
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 4122
    iput-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 4123
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    .line 430
    :cond_11
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->B:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/f;->a(Landroid/os/Bundle;)V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onCreateView(Landroid/view/View;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 598
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 599
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onDestroy()V

    .line 600
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->I:Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->t:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 587
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    const-string v0, "ManageApplications"

    const-string v1, "onDestroyView"

    .line 588
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 8186
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 8187
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    if-eqz v1, :cond_0

    .line 8188
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    invoke-virtual {v0}, Lcom/android/settings/applications/e;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->w:Landroid/view/View;

    .line 593
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onDestroyView()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 855
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(I)Lcom/android/settings/applications/manageapplications/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 856
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/a;)V

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Selecting filter "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 10045
    iget p3, p3, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 859
    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ManageApplications"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 773
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 774
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    return v2

    .line 778
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 781
    :sswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p1, :cond_2

    .line 782
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(I)V

    goto :goto_1

    .line 797
    :sswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->B:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/f;->a()V

    return v2

    .line 787
    :sswitch_2
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    .line 788
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    .line 790
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "app_list_show_system_process"

    goto :goto_0

    :cond_1
    const-string p1, "app_list_hide_system_process"

    .line 792
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    .line 793
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 817
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    return v2

    .line 800
    :sswitch_3
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v0, 0x2

    if-ne p1, v2, :cond_3

    .line 801
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 802
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v1, 0x0

    const v3, 0x7f120600

    .line 9063
    invoke-virtual {p1, v1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 805
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 806
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    goto :goto_2

    .line 808
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a006f -> :sswitch_3
        0x7f0a02fe -> :sswitch_2
        0x7f0a0564 -> :sswitch_1
        0x7f0a0606 -> :sswitch_2
        0x7f0a062e -> :sswitch_0
        0x7f0a0631 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 1767
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 1768
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1761
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 1762
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b()Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 557
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->B:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/f;->b(Landroid/os/Bundle;)V

    .line 559
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    const-string v1, "sortOrder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const-string v1, "showSystem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasEntries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasBridge"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->q:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "expand_search_view"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 6053
    iget v0, v0, Lcom/android/settings/applications/manageapplications/a;->b:I

    const-string v1, "filterType"

    .line 567
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 6180
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 6181
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6182
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const-string v1, "state_last_scroll_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 547
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 4879
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    .line 4880
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4882
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_5

    .line 550
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    .line 5154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resume!  mResumed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageApplications"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    iget-boolean v2, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->f:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 5156
    iput-boolean v3, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->f:Z

    .line 5157
    iget-object v2, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 5158
    iput v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    .line 5159
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    if-eqz v1, :cond_1

    .line 5160
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    invoke-virtual {v1}, Lcom/android/settings/applications/e;->b()V

    .line 5162
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    goto :goto_0

    .line 5164
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(I)V

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 5402
    iget-boolean v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 5404
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d:Lcom/android/settings/widget/d;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/d;->a(Z)V

    return-void

    .line 5406
    :cond_4
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d:Lcom/android/settings/widget/d;

    invoke-virtual {v0}, Lcom/android/settings/widget/d;->a()V

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 578
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    .line 579
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 7169
    iget-boolean v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 7170
    iput-boolean v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->f:Z

    .line 7171
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 7172
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    if-eqz v1, :cond_0

    .line 7173
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    invoke-virtual {v0}, Lcom/android/settings/applications/e;->c()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->B:Lcom/android/settings/applications/manageapplications/f;

    .line 8081
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 8082
    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 8083
    iput-object v1, v0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    :cond_1
    return-void
.end method
