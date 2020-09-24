.class public abstract Lcom/android/settings/applications/ProcessStatsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static a:[J

.field protected static b:[I

.field private static final f:J


# instance fields
.field protected c:Landroid/view/ViewGroup;

.field protected d:Lcom/android/settings/applications/v;

.field protected e:I

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 49
    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsBase;->f:J

    const/4 v0, 0x4

    .line 50
    new-array v1, v0, [J

    sget-wide v2, Lcom/android/settings/applications/ProcessStatsBase;->f:J

    const-wide/16 v4, 0x2

    div-long v6, v2, v4

    const-wide/32 v8, 0xa4cb80

    sub-long/2addr v8, v6

    const/4 v6, 0x0

    aput-wide v8, v1, v6

    div-long v6, v2, v4

    const-wide/32 v8, 0x1499700

    sub-long/2addr v8, v6

    const/4 v6, 0x1

    aput-wide v8, v1, v6

    div-long v6, v2, v4

    const-wide/32 v8, 0x2932e00

    sub-long/2addr v8, v6

    const/4 v6, 0x2

    aput-wide v8, v1, v6

    div-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v4, v2

    const/4 v2, 0x3

    aput-wide v4, v1, v2

    sput-object v1, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsBase;->b:[I

    return-void

    :array_0
    .array-data 4
        0x7f120d7a
        0x7f120d7b
        0x7f120d78
        0x7f120d79
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/v$a;Lcom/android/settings/applications/x;)V
    .locals 5

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package_entry"

    .line 141
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    iget-wide v1, p1, Lcom/android/settings/applications/v$a;->h:D

    const-string/jumbo p2, "weight_to_ram"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 143
    iget-wide v1, p1, Lcom/android/settings/applications/v$a;->k:J

    const-string/jumbo p2, "total_time"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    iget-wide v1, p1, Lcom/android/settings/applications/v$a;->g:D

    iget-wide v3, p1, Lcom/android/settings/applications/v$a;->h:D

    mul-double/2addr v1, v3

    const-string p2, "max_memory_usage"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 146
    iget-wide p1, p1, Lcom/android/settings/applications/v$a;->j:D

    const-string/jumbo v1, "total_scale"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 147
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/ProcessStatsDetail;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x7f120d72

    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const v0, 0x7f0d004a

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->c:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a0293

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    .line 113
    new-instance v0, Lcom/android/settingslib/widget/settingsspinner/a;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/settingsspinner/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->h:Landroid/widget/ArrayAdapter;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->h:Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->b:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->h:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/settings/applications/v;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v4, "transfer_stats"

    .line 72
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-direct {v1, v2, v4}, Lcom/android/settings/applications/v;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsBase;->d:Lcom/android/settings/applications/v;

    const-string v1, "duration_index"

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->e:I

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->d:Lcom/android/settings/applications/v;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide v2, v1, v3

    const-string v1, "duration"

    .line 78
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide v1, p1, v3

    .line 77
    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/v;->a(J)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->d:Lcom/android/settings/applications/v;

    .line 2093
    iget-object v0, v0, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/v;->a:Lcom/android/internal/app/procstats/ProcessStats;

    :cond_0
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

    .line 125
    iput p3, p0, Lcom/android/settings/applications/ProcessStatsBase;->e:I

    .line 126
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->d:Lcom/android/settings/applications/v;

    sget-object p2, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide p3, p2, p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/applications/v;->a(J)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->b()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsBase;->g:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->d:Lcom/android/settings/applications/v;

    .line 1133
    iget-wide v0, v0, Lcom/android/settings/applications/v;->c:J

    const-string v2, "duration"

    .line 84
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsBase;->e:I

    const-string v1, "duration_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsBase;->a()V

    return-void
.end method
