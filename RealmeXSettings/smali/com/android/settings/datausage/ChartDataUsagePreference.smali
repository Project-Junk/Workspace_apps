.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field a:J

.field b:J

.field c:Lcom/android/settingslib/net/c;

.field d:I

.field e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/net/NetworkPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    const p2, 0x1010543

    .line 58
    invoke-static {p1, p2}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->g:I

    const p2, 0x1010038

    .line 59
    invoke-static {p1, p2}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->f:I

    const p1, 0x7f0d013e

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    return-void
.end method

.method private a(JII)Ljava/lang/CharSequence;
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 158
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, p1, p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->h:Landroid/net/NetworkPolicy;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 20

    move-object/from16 v0, p0

    .line 65
    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a01ca

    move-object/from16 v2, p1

    .line 66
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/UsageView;

    .line 67
    iget-object v2, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->c:Lcom/android/settingslib/net/c;

    if-nez v2, :cond_0

    return-void

    .line 2040
    :cond_0
    iget-wide v2, v2, Lcom/android/settingslib/net/d;->e:J

    .line 1085
    iget-object v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->h:Landroid/net/NetworkPolicy;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-wide v7, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->h:Landroid/net/NetworkPolicy;

    iget-wide v9, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1086
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v7, v5

    .line 1087
    :goto_0
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v7, 0x80000

    div-long/2addr v2, v7

    long-to-int v2, v2

    .line 2091
    iget-object v3, v1, Lcom/android/settings/widget/UsageView;->a:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {v3}, Lcom/android/settings/widget/UsageGraph;->a()V

    .line 73
    iget-wide v3, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->b:J

    iget-wide v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    sub-long/2addr v3, v9

    const-wide/32 v9, 0xea60

    .line 2123
    div-long/2addr v3, v9

    long-to-int v3, v3

    .line 73
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/widget/UsageView;->a(II)V

    .line 74
    iget-object v3, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->c:Lcom/android/settingslib/net/c;

    .line 3034
    iget-object v3, v3, Lcom/android/settingslib/net/c;->b:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    .line 3095
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12}, Landroid/util/SparseIntArray;-><init>()V

    .line 3096
    invoke-virtual {v12, v11, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 3098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 3100
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settingslib/net/d;

    .line 4032
    iget-wide v7, v15, Lcom/android/settingslib/net/d;->c:J

    cmp-long v16, v7, v13

    if-gtz v16, :cond_3

    .line 4036
    iget-wide v9, v15, Lcom/android/settingslib/net/d;->d:J

    move-wide/from16 v18, v13

    .line 4040
    iget-wide v13, v15, Lcom/android/settingslib/net/d;->e:J

    add-long/2addr v5, v13

    .line 3110
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ne v13, v4, :cond_2

    .line 3111
    iget-wide v13, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    sub-long v13, v7, v13

    const-wide/32 v16, 0xea60

    .line 4123
    div-long v13, v13, v16

    long-to-int v13, v13

    sub-int/2addr v13, v4

    const/4 v14, -0x1

    .line 3111
    invoke-virtual {v12, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_2
    const-wide/32 v16, 0xea60

    .line 3113
    :goto_2
    iget-wide v13, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    sub-long/2addr v7, v13

    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    .line 5123
    div-long v7, v7, v16

    long-to-int v7, v7

    move v8, v2

    move-object/from16 p1, v3

    const-wide/32 v13, 0x80000

    .line 3113
    div-long v2, v5, v13

    long-to-int v2, v2

    invoke-virtual {v12, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3114
    iget-wide v13, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    sub-long/2addr v9, v13

    .line 6123
    div-long v9, v9, v16

    long-to-int v3, v9

    .line 3114
    invoke-virtual {v12, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v3, p1

    move v2, v8

    move-wide/from16 v9, v16

    move-wide/from16 v13, v18

    const-wide/32 v7, 0x80000

    goto :goto_1

    :cond_3
    move v8, v2

    .line 3116
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 3117
    invoke-virtual {v1, v12}, Lcom/android/settings/widget/UsageView;->a(Landroid/util/SparseIntArray;)V

    goto :goto_3

    :cond_4
    move v8, v2

    :cond_5
    :goto_3
    const/4 v2, 0x2

    .line 75
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    invoke-static {v5, v6, v7, v6, v7}, Lcom/android/settings/m;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->b:J

    invoke-static {v5, v6, v7, v6, v7}, Lcom/android/settings/m;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->h:Landroid/net/NetworkPolicy;

    const/4 v5, 0x3

    .line 6127
    new-array v5, v5, [Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    .line 6134
    iget-wide v6, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v9, -0x1

    cmp-long v6, v6, v9

    if-eqz v6, :cond_6

    .line 6135
    iget v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->g:I

    .line 6136
    iget-wide v12, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const v7, 0x7f1206fc

    iget v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->g:I

    invoke-direct {v0, v12, v13, v7, v14}, Lcom/android/settings/datausage/ChartDataUsagePreference;->a(JII)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v2

    goto :goto_4

    :cond_6
    move v6, v11

    .line 6139
    :goto_4
    iget-wide v12, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v12, v9

    if-eqz v2, :cond_7

    .line 6140
    iget-wide v9, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v11, 0x80000

    div-long/2addr v9, v11

    long-to-int v2, v9

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    .line 6141
    iget-wide v9, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v9, v11

    long-to-float v2, v9

    int-to-float v7, v8

    div-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    const v8, 0x7f0a0634

    .line 7119
    invoke-virtual {v1, v8, v7}, Lcom/android/settings/widget/UsageView;->a(IF)V

    const v7, 0x7f0a0635

    .line 7120
    invoke-virtual {v1, v7, v2}, Lcom/android/settings/widget/UsageView;->a(IF)V

    .line 6144
    iget v11, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->f:I

    .line 6145
    iget-wide v2, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    const v7, 0x7f1206fd

    iget v8, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->f:I

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/android/settings/datausage/ChartDataUsagePreference;->a(JII)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v5, v4

    .line 6149
    :cond_7
    invoke-virtual {v1, v5}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 8115
    iget-object v1, v1, Lcom/android/settings/widget/UsageView;->a:Lcom/android/settings/widget/UsageGraph;

    .line 8131
    iput v11, v1, Lcom/android/settings/widget/UsageGraph;->c:I

    .line 8132
    iput v6, v1, Lcom/android/settings/widget/UsageGraph;->d:I

    :cond_8
    return-void
.end method
