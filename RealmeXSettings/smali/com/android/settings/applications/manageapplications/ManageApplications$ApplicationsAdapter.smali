.class public Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/applications/e$b;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;",
        "Lcom/android/settings/applications/e$b;",
        "Lcom/coloros/settingslib/applications/ApplicationsState$d;"
    }
.end annotation


# instance fields
.field final a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field final b:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field public final c:Lcom/android/settings/applications/e;

.field final d:Lcom/android/settings/widget/d;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:I

.field h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field i:Z

.field j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final k:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private final l:Landroid/content/Context;

.field private final m:Landroid/util/IconDrawableFactory;

.field private n:Lcom/android/settings/applications/manageapplications/a;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/android/settings/applications/manageapplications/c;

.field private t:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;

.field private u:Lcom/android/settingslib/j/c;

.field private v:I

.field private w:Landroidx/recyclerview/widget/RecyclerView;

.field private final x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/a;Landroid/os/Bundle;)V
    .locals 9

    .line 1054
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 1031
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    const/4 v1, 0x0

    .line 1032
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->p:I

    .line 1044
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    const/4 v0, 0x1

    .line 1055
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setHasStableIds(Z)V

    .line 1056
    new-instance v1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->x:Landroid/os/Handler;

    .line 1069
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v1, 0x0

    .line 2275
    invoke-virtual {p1, p0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    .line 1070
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 1071
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1072
    new-instance p1, Lcom/android/settings/widget/d;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1073
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->f(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1074
    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->g(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/android/settings/widget/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d:Lcom/android/settings/widget/d;

    .line 1076
    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    .line 1077
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->m:Landroid/util/IconDrawableFactory;

    .line 1078
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 1079
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->u:Lcom/android/settingslib/j/c;

    .line 1080
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-ne p1, v0, :cond_0

    .line 1081
    new-instance p1, Lcom/android/settings/applications/g;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 1082
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->h(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v6

    .line 1083
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->i(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;

    move-result-object v7

    .line 1084
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->j(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/k;

    move-result-object v8

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/applications/g;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/k;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto/16 :goto_0

    .line 1085
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 1086
    new-instance p1, Lcom/android/settings/applications/k;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/k;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1087
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 1088
    new-instance p1, Lcom/android/settings/applications/i;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/i;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1089
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    .line 1090
    new-instance p1, Lcom/android/settings/applications/h;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/h;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1091
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_4

    .line 1092
    new-instance p1, Lcom/android/settings/applications/l;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/l;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1093
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_5

    .line 1094
    new-instance p1, Lcom/android/settings/applications/f;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/f;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1095
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 p2, 0xd

    if-ne p1, p2, :cond_6

    .line 1096
    new-instance p1, Lcom/android/settings/wifi/a;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/wifi/a;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    goto :goto_0

    .line 1098
    :cond_6
    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    :goto_0
    if-eqz p4, :cond_7

    const-string p1, "state_last_scroll_index"

    .line 1101
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 1314
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1321
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1322
    iget-object v6, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 1323
    iget-object v7, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    if-nez v7, :cond_0

    goto :goto_1

    .line 6306
    :cond_0
    iget-object v8, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_1

    .line 6309
    :cond_1
    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_3

    .line 1324
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object v4, v6

    goto :goto_0

    .line 1328
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method

.method private synthetic a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 1012
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 1012
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    return p1
.end method

.method private b()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 1012
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->r:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 1012
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/c;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    return-object p0
.end method

.method private synthetic c()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/c;->a()V

    .line 1147
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$ozrLx500hhVRcOAIzQ4vekocr28;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$ozrLx500hhVRcOAIzQ4vekocr28;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-object p0
.end method

.method private synthetic d()V
    .locals 1

    .line 21480
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21484
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroid/content/Context;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic lambda$5uzNj1U9a4xisQIyWXcwf66qbAk(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic lambda$PKjJ08JUgS5yr9106lhaO9D6B2s(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c()V

    return-void
.end method

.method public static synthetic lambda$ozrLx500hhVRcOAIzQ4vekocr28(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1221
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->r:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1234
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->p:I

    goto :goto_0

    .line 1238
    :cond_1
    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->p:I

    .line 1240
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 6049
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/a;->c:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 1241
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->h:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    if-eqz v1, :cond_2

    .line 1242
    new-instance v3, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    invoke-direct {v3, v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    move-object v0, v3

    .line 1244
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    if-nez v1, :cond_4

    .line 1245
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->g:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v3, v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1246
    new-instance v1, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v3, Lcom/coloros/settingslib/applications/ApplicationsState;->O:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v1, v0, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_1

    .line 1249
    :cond_3
    new-instance v1, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v3, Lcom/coloros/settingslib/applications/ApplicationsState;->N:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v1, v0, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1253
    :goto_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    packed-switch v0, :pswitch_data_0

    .line 1274
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v0

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->getDefaultComparator(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_2

    .line 1255
    :pswitch_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->p:I

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 1263
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->H:Ljava/util/Comparator;

    goto :goto_2

    .line 1260
    :cond_5
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->J:Ljava/util/Comparator;

    goto :goto_2

    .line 1257
    :cond_6
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->I:Ljava/util/Comparator;

    goto :goto_2

    .line 1268
    :pswitch_1
    sget-object v0, Lcom/android/settings/applications/g;->j:Ljava/util/Comparator;

    goto :goto_2

    .line 1271
    :pswitch_2
    sget-object v0, Lcom/android/settings/applications/g;->k:Ljava/util/Comparator;

    .line 1278
    :goto_2
    new-instance v2, Lcom/coloros/settingslib/applications/ApplicationsState$e;

    sget-object v3, Lcom/coloros/settingslib/applications/ApplicationsState;->V:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-direct {v2, v1, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    .line 1280
    new-instance v1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$5uzNj1U9a4xisQIyWXcwf66qbAk;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$5uzNj1U9a4xisQIyWXcwf66qbAk;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 1225
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Not rebuilding until all the app entries loaded. !mHasReceivedLoadEntries="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " !mExtraInfoBridgeNull="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !mHasReceivedBridgeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->r:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a062f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)V
    .locals 1

    .line 1193
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->a:I

    .line 1197
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public final a(Lcom/android/settings/applications/manageapplications/a;)V
    .locals 2

    .line 1127
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 3053
    iget v0, p1, Lcom/android/settings/applications/manageapplications/a;->b:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    const p1, 0x7f0a062f

    .line 1131
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 4053
    iget v1, p1, Lcom/android/settings/applications/manageapplications/a;->b:I

    if-ne v0, v1, :cond_1

    const p1, 0x7f0a0630

    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(I)V

    return-void

    :cond_1
    const/16 v0, 0x10

    .line 5053
    iget p1, p1, Lcom/android/settings/applications/manageapplications/a;->b:I

    if-ne v0, p1, :cond_2

    const p1, 0x7f0a062e

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(I)V

    return-void

    .line 1137
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public final a(Lcom/android/settings/applications/manageapplications/c;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    .line 1145
    new-instance p1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$PKjJ08JUgS5yr9106lhaO9D6B2s;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$PKjJ08JUgS5yr9106lhaO9D6B2s;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->t:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;

    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;B)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->t:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string p1, "ManageApplications"

    const-string v0, "Apps haven\'t loaded completely yet, so nothing can be filtered"

    .line 1296
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->t:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$a;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1492
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-wide v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->b:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1214
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1215
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 1474
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    const v1, 0x7f0a0631

    if-ne v0, v1, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1107
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1108
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 1109
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1110
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1012
    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    .line 15524
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 15525
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 15527
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->s:Lcom/android/settings/applications/manageapplications/c;

    invoke-interface {p2, p1}, Lcom/android/settings/applications/manageapplications/c;->a(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    goto/16 :goto_6

    .line 15530
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 15531
    monitor-enter v0

    .line 15532
    :try_start_0
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b(Ljava/lang/CharSequence;)V

    .line 15533
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->m:Landroid/util/IconDrawableFactory;

    iget-object v2, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16148
    iget-object v2, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16546
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    const/16 v5, 0xd

    if-eq v1, v5, :cond_7

    packed-switch v1, :pswitch_data_0

    .line 16582
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->f:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->p:I

    const-string v6, "ManageApplications"

    .line 17166
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateSizeText of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17169
    iget-object v6, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->m:Ljava/lang/String;

    if-eqz v6, :cond_4

    if-eq v5, v4, :cond_3

    const/4 v1, 0x2

    if-eq v5, v1, :cond_2

    .line 17178
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 17175
    :cond_2
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 17172
    :cond_3
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 17181
    :cond_4
    iget-wide v5, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 17182
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 16576
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 16573
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 16570
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 16567
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16557
    :pswitch_4
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 16558
    new-instance v1, Lcom/android/settings/applications/k$a;

    iget-object v5, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/applications/d$a;

    invoke-direct {v1, v5}, Lcom/android/settings/applications/k$a;-><init>(Lcom/android/settings/applications/d$a;)V

    .line 16559
    invoke-virtual {v1}, Lcom/android/settings/applications/k$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f1201e9

    goto :goto_0

    :cond_5
    const v1, 0x7f1201ea

    .line 17121
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v1}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->setSizeText(Landroid/widget/TextView;I)V

    .line 17122
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a()Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;->updateSummary(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 17125
    iget-object v5, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17126
    iget-object v5, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 16563
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16579
    :cond_7
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16548
    :cond_8
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/g$a;

    if-eqz v1, :cond_9

    .line 16550
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object v5, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/applications/g$a;

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    invoke-static {v1, v5, v6}, Lcom/android/settings/applications/g;->a(Landroid/content/Context;Lcom/android/settings/applications/g$a;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16553
    :cond_9
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    .line 17588
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eq v1, v4, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v6, :cond_b

    goto :goto_2

    .line 17687
    :cond_b
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v1

    .line 17603
    invoke-virtual {v1, p1, v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->updateColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    goto :goto_2

    .line 18687
    :cond_c
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v1

    .line 17606
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    check-cast v3, Lcom/android/settings/applications/k;

    invoke-virtual {v1, p1, v0, v3}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->updateUsageColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/k;)V

    goto :goto_2

    .line 17590
    :cond_d
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    check-cast v1, Lcom/android/settings/applications/g;

    .line 17591
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/g;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 17592
    invoke-static {v0}, Lcom/android/settings/applications/g;->b(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v7

    .line 17593
    invoke-static {v0}, Lcom/android/settings/applications/g;->c(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v8

    .line 17590
    invoke-virtual {p1, v1, v7, v8}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 17594
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/g$a;

    if-eqz v1, :cond_e

    .line 17596
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    iget-object v3, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings/applications/g$a;

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->g:I

    invoke-static {v1, v3, v7}, Lcom/android/settings/applications/g;->a(Landroid/content/Context;Lcom/android/settings/applications/g$a;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17599
    :cond_e
    invoke-virtual {p1, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Ljava/lang/CharSequence;)V

    .line 15536
    :goto_2
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 19152
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v3, v7

    if-nez v3, :cond_f

    .line 19153
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19154
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    const v3, 0x7f120e92

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 19155
    :cond_f
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_11

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v1, v5, :cond_10

    goto :goto_3

    .line 19160
    :cond_10
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 19157
    :cond_11
    :goto_3
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19158
    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->c:Landroid/widget/TextView;

    const v3, 0x7f1207e9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 15537
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19512
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v4, :cond_14

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_5

    .line 19516
    :cond_12
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 19518
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->u:Lcom/android/settingslib/j/c;

    iget-object v1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/j/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->u:Lcom/android/settingslib/j/c;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 19519
    invoke-virtual {v0, p2}, Lcom/android/settingslib/j/c;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_5

    :cond_13
    move v4, v2

    .line 20130
    :cond_14
    :goto_5
    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 15537
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15542
    :cond_15
    :goto_6
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 20204
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 20687
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p2

    .line 20204
    invoke-virtual {p2}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->needShowTowTarget()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 20207
    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 20205
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20209
    :goto_1
    new-instance p2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1115
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1116
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 1117
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 1118
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->w:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 1412
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->r:Z

    .line 1413
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1466
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->q:Z

    .line 1467
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-boolean v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    if-nez v0, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1434
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->i:Z

    .line 1436
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 1423
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    .line 1441
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1444
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1446
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1447
    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 1448
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1451
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->l(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a()V

    return-void

    .line 1459
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->j:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 14646
    iget v3, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->a:I

    if-nez v3, :cond_2

    .line 14647
    iget-object v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->c:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 14649
    iput-boolean v3, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->b:Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ManageApplications"

    const-string v1, "onRebuildComplete"

    .line 1335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1337
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRebuildComplete: app info: label = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", appuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->n:Lcom/android/settings/applications/manageapplications/a;

    .line 7053
    iget v0, v0, Lcom/android/settings/applications/manageapplications/a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    .line 1344
    :cond_1
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 7687
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object v2

    .line 1346
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->l:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, p1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->filterAppEntry(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1347
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    .line 1348
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->o:Ljava/util/ArrayList;

    .line 8687
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    .line 1349
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->refreshSearchViewHint(Ljava/util/ArrayList;)V

    .line 9687
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    .line 1350
    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->notifyWrapperDataSetChanged()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1351
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1353
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    if-nez p1, :cond_4

    .line 1354
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1355
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->x:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->x:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1358
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->x:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1359
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->e(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1361
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->k(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1362
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->k(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1363
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->k(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1365
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/String;)V

    .line 1371
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    if-le p1, v3, :cond_6

    .line 1372
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1373
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->v:I

    .line 1376
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1377
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->g(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 1379
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->e(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 1380
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d:Lcom/android/settings/widget/d;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/d;->a(Z)V

    goto :goto_2

    .line 1382
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->d:Lcom/android/settings/widget/d;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/d;->a(Z)V

    .line 1385
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    return-void

    .line 1390
    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 10467
    iget-boolean v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->r:Z

    .line 10887
    iget v3, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-nez v3, :cond_a

    .line 10890
    iget-object v3, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(IZ)V

    .line 10891
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(IZ)V

    .line 1391
    :cond_a
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->k:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 11471
    iget-boolean v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->s:Z

    .line 11895
    sget-object v3, Lcom/android/settings/applications/manageapplications/ManageApplications;->g:Ljava/util/Set;

    iget v4, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 11896
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(IZ)V

    .line 12687
    :cond_b
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    .line 1393
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 1394
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->q:Z

    if-eqz p1, :cond_c

    .line 13687
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->b(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    move-result-object p1

    .line 1395
    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;->onLauncherInfoChanged()V

    .line 1396
    iput-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->q:Z

    :cond_c
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->b:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method
