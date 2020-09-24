.class final Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;
.super Landroid/os/AsyncTask;
.source "AppMemoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;B)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V

    return-void
.end method

.method private varargs a()Lcom/android/settings/applications/x;
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v2

    .line 1321
    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    return-object v1

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;

    move-result-object v3

    if-nez v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    new-instance v4, Lcom/android/settings/applications/v;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/applications/v;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3, v4}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/v;)Lcom/android/settings/applications/v;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;

    move-result-object v0

    sget-object v3, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide v4, v3, v5

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/v;->a(J)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/v;->b()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;

    move-result-object v0

    .line 2137
    iget-object v0, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/x;

    .line 2188
    iget-object v4, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/w;

    .line 2301
    iget v5, v5, Lcom/android/settings/applications/w;->b:I

    .line 69
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_4

    .line 70
    invoke-virtual {v3}, Lcom/android/settings/applications/x;->a()V

    return-object v3

    :cond_5
    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a()Lcom/android/settings/applications/x;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 50
    check-cast p1, Lcom/android/settings/applications/x;

    .line 3080
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3084
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/x;)Lcom/android/settings/applications/x;

    .line 3085
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3180
    iget-wide v3, p1, Lcom/android/settings/applications/x;->j:D

    .line 3184
    iget-wide v5, p1, Lcom/android/settings/applications/x;->f:D

    .line 3086
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 3087
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;

    move-result-object p1

    .line 4118
    iget-object p1, p1, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 4377
    iget-wide v5, p1, Lcom/android/settings/applications/v$a;->h:D

    mul-double/2addr v3, v5

    .line 3088
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f120d75

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 3089
    invoke-static {v6}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v6

    double-to-long v3, v3

    invoke-static {v6, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3088
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 3091
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3092
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->a:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120e7b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
