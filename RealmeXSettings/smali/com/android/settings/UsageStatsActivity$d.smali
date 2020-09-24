.class final Lcom/android/settings/UsageStatsActivity$d;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/android/settings/UsageStatsActivity;

.field private c:Lcom/android/settings/UsageStatsActivity$c;

.field private d:Lcom/android/settings/UsageStatsActivity$e;

.field private e:Lcom/android/settings/UsageStatsActivity$a;

.field private final f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity;)V
    .locals 10

    .line 109
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$d;->b:Lcom/android/settings/UsageStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$d;->a:I

    .line 103
    new-instance v1, Lcom/android/settings/UsageStatsActivity$c;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$c;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->c:Lcom/android/settings/UsageStatsActivity$c;

    .line 104
    new-instance v1, Lcom/android/settings/UsageStatsActivity$e;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$e;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->d:Lcom/android/settings/UsageStatsActivity$e;

    .line 106
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->f:Landroid/util/ArrayMap;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x5

    .line 111
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 114
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->a(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    .line 115
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x4

    .line 114
    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->b(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 128
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->b(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    iget-object v7, p0, Lcom/android/settings/UsageStatsActivity$d;->f:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    if-nez v6, :cond_1

    .line 134
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    new-instance p1, Lcom/android/settings/UsageStatsActivity$a;

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->f:Landroid/util/ArrayMap;

    invoke-direct {p1, v0}, Lcom/android/settings/UsageStatsActivity$a;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$d;->e:Lcom/android/settings/UsageStatsActivity$a;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$d;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$d;->a:I

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->d:Lcom/android/settings/UsageStatsActivity$e;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->c:Lcom/android/settings/UsageStatsActivity$c;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$d;->e:Lcom/android/settings/UsageStatsActivity$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$d;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 175
    iget-object p2, p0, Lcom/android/settings/UsageStatsActivity$d;->b:Lcom/android/settings/UsageStatsActivity;

    invoke-static {p2}, Lcom/android/settings/UsageStatsActivity;->c(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0385

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 179
    new-instance p3, Lcom/android/settings/UsageStatsActivity$b;

    invoke-direct {p3}, Lcom/android/settings/UsageStatsActivity$b;-><init>()V

    const v0, 0x7f0a04a6

    .line 180
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0381

    .line 181
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0764

    .line 182
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$b;->c:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/UsageStatsActivity$b;

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    if-eqz v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/settings/UsageStatsActivity$d;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 194
    iget-object v1, p3, Lcom/android/settings/UsageStatsActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p3, Lcom/android/settings/UsageStatsActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 195
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p3, Lcom/android/settings/UsageStatsActivity$b;->c:Landroid/widget/TextView;

    .line 198
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p3

    .line 197
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "No usage stats info for package:"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "UsageStatsActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p2
.end method
