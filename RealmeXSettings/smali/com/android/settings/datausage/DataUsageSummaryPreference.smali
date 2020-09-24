.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroidx/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field static final a:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final b:J

.field private static final c:J


# instance fields
.field private d:Z

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private final h:J

.field private i:J

.field private j:J

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/content/Intent;

.field private n:F

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->b:J

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->c:J

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->d:Z

    const-wide/16 p1, 0x0

    .line 73
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->h:J

    const p1, 0x7f0d0141

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->m:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 361
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    const v0, 0x7f0a01bf

    .line 279
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 282
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-wide v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120354

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    sget-wide v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->b:J

    div-long/2addr v4, v1

    long-to-int v1, v4

    if-gtz v1, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120353

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100010

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 295
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 4

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3225
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 3227
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    const-string v3, "network_template"

    .line 3226
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "network_type"

    .line 3228
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3229
    new-instance v1, Lcom/android/settings/core/f;

    invoke-direct {v1, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 3230
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const-class v0, Lcom/android/settings/datausage/DataUsageList;

    .line 3231
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    .line 3232
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12195a

    .line 4063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    .line 3234
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public static synthetic lambda$ERdWVMxEE9JiHTVMlPvGp-vaEAo(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$SLWBuNsfCz_yZq5CDcpy31QS37E(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->n:F

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public final a(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->i:J

    .line 121
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->j:J

    .line 122
    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->k:Ljava/lang/CharSequence;

    .line 123
    iput p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->g:I

    .line 124
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->m:Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method final a(JJZ)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->q:J

    .line 143
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->p:J

    .line 144
    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->o:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->e:Ljava/lang/CharSequence;

    .line 137
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->f:Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->d:Z

    if-eq v0, p1, :cond_0

    .line 130
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->d:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method final a(ZLjava/lang/String;Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->r:Z

    .line 150
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->s:Ljava/lang/String;

    .line 151
    iput-boolean p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->t:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 157
    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a01ec

    .line 159
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 160
    iget-boolean v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->d:Z

    const v4, 0x7f0a0371

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->f:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->n:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x1020014

    .line 164
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1020015

    .line 165
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->f:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0a01cb

    .line 1238
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-wide v7, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->q:J

    const/16 v4, 0xa

    invoke-static {v3, v7, v8, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    .line 1242
    new-instance v4, Landroid/text/SpannableString;

    iget-object v7, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070765

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1245
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v4, v8, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f12070d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x2

    .line 1249
    new-array v9, v8, [Ljava/lang/CharSequence;

    aput-object v4, v9, v6

    iget-object v3, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v9, v4

    .line 1250
    invoke-static {v7, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1251
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0763

    .line 1254
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MeasurableLinearLayout;

    .line 1256
    iget-boolean v7, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->o:Z

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->g:I

    if-ltz v7, :cond_3

    iget-wide v13, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->p:J

    cmp-long v7, v13, v11

    if-lez v7, :cond_3

    const v7, 0x7f0a01c7

    .line 1257
    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1258
    iget-wide v13, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->p:J

    iget-wide v8, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->q:J

    sub-long/2addr v13, v8

    cmp-long v8, v13, v11

    if-ltz v8, :cond_2

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1206aa

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/CharSequence;

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13, v14}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v9, v6

    .line 1261
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1260
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1010435

    invoke-static {v8, v9}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 1263
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 1267
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1206a9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/CharSequence;

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    neg-long v13, v13

    invoke-static {v15, v13, v14}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v9, v6

    .line 1267
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1266
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1010543

    invoke-static {v8, v9}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 1269
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1272
    :goto_1
    invoke-virtual {v3, v2, v7}, Lcom/android/settings/datausage/MeasurableLinearLayout;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    .line 1274
    :cond_3
    invoke-virtual {v3, v2, v10}, Lcom/android/settings/datausage/MeasurableLinearLayout;->a(Landroid/view/View;Landroid/view/View;)V

    :goto_2
    const v2, 0x7f0a0765

    .line 173
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0126

    .line 174
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0a0387

    .line 175
    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0a01c3

    .line 176
    invoke-virtual {v1, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 178
    iget-boolean v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->r:Z

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->t:Z

    if-eqz v9, :cond_5

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 181
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 187
    :cond_5
    iget-boolean v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->r:Z

    if-eqz v9, :cond_7

    const v4, 0x7f12070b

    .line 188
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 189
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a01bf

    .line 190
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1366
    new-instance v1, Lcom/android/settingslib/net/a;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    .line 1367
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/a;->b(Landroid/net/NetworkTemplate;)J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-lez v1, :cond_6

    .line 197
    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$SLWBuNsfCz_yZq5CDcpy31QS37E;

    invoke-direct {v1, v0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$SLWBuNsfCz_yZq5CDcpy31QS37E;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 201
    :cond_6
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    const v1, 0x7f120bed

    .line 203
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(I)V

    .line 204
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 206
    :cond_7
    iget v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->g:I

    if-le v9, v4, :cond_8

    move v9, v6

    goto :goto_5

    :cond_8
    move v9, v5

    :goto_5
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 2302
    iget v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->g:I

    if-lez v1, :cond_10

    iget-wide v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->j:J

    cmp-long v1, v1, v11

    if-ltz v1, :cond_10

    .line 2303
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v13, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->j:J

    sub-long/2addr v1, v13

    .line 2347
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x1

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    cmp-long v9, v1, v16

    if-ltz v9, :cond_9

    .line 2348
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    div-long v1, v1, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    :goto_6
    mul-long/2addr v1, v13

    goto :goto_7

    .line 2349
    :cond_9
    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    cmp-long v9, v1, v16

    if-ltz v9, :cond_a

    .line 2350
    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    div-long v1, v1, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_6

    .line 2351
    :cond_a
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    cmp-long v9, v1, v16

    if-ltz v9, :cond_b

    .line 2352
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    div-long v1, v1, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_6

    :cond_b
    move-wide v1, v11

    :goto_7
    cmp-long v9, v1, v11

    if-nez v9, :cond_d

    .line 2309
    iget-object v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->k:Ljava/lang/CharSequence;

    if-eqz v9, :cond_c

    const v9, 0x7f1204ad

    goto :goto_9

    :cond_c
    const v9, 0x7f120e70

    goto :goto_9

    .line 2315
    :cond_d
    iget-object v9, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->k:Ljava/lang/CharSequence;

    if-eqz v9, :cond_e

    const v9, 0x7f1204ae

    goto :goto_8

    :cond_e
    const v9, 0x7f120e71

    .line 2321
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    long-to-double v11, v1

    .line 2320
    invoke-static {v10, v11, v12}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2324
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->k:Ljava/lang/CharSequence;

    aput-object v12, v11, v6

    aput-object v10, v11, v4

    .line 2323
    invoke-static {v9, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2328
    sget-wide v9, Lcom/android/settings/datausage/DataUsageSummaryPreference;->c:J

    cmp-long v1, v1, v9

    if-gtz v1, :cond_f

    const v1, 0x1010038

    .line 2329
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_a

    .line 2332
    :cond_f
    sget-object v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a:Landroid/graphics/Typeface;

    const v2, 0x1010543

    invoke-direct {v0, v3, v2, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_a

    .line 2335
    :cond_10
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :goto_a
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->m:Landroid/content/Intent;

    if-eqz v1, :cond_11

    .line 210
    new-instance v1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$ERdWVMxEE9JiHTVMlPvGp-vaEAo;

    invoke-direct {v1, v0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$ERdWVMxEE9JiHTVMlPvGp-vaEAo;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b

    .line 215
    :cond_11
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    :goto_b
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    move v5, v6

    .line 217
    :goto_c
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->l:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
