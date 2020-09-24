.class public Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;
.super Lcom/color/injector/adaptor/g;
.source "ProcessStatsSummaryFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_process_summary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;
    }
.end annotation


# static fields
.field private static final KEY_APP_LIST:Ljava/lang/String; = "apps_list"

.field private static final KEY_AVERAGY_USED:Ljava/lang/String; = "average_used"

.field private static final KEY_FREE:Ljava/lang/String; = "free"

.field private static final KEY_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final KEY_STATUS_HEADER:Ljava/lang/String; = "status_header"

.field private static final KEY_TOTAL_MEMORY:Ljava/lang/String; = "total_memory"


# instance fields
.field private mAppListPreference:Landroidx/preference/Preference;

.field private mAverageUsed:Landroidx/preference/Preference;

.field private mFree:Landroidx/preference/Preference;

.field private mPerformance:Landroidx/preference/Preference;

.field private mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

.field private mTotalMemory:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSpinnerHeader()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsSummary;)Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "status_header"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    const-string v0, "performance"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mPerformance:Landroidx/preference/Preference;

    const-string v0, "total_memory"

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mTotalMemory:Landroidx/preference/Preference;

    const-string v0, "average_used"

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mAverageUsed:Landroidx/preference/Preference;

    const-string v0, "free"

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mFree:Landroidx/preference/Preference;

    const-string v0, "apps_list"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mAppListPreference:Landroidx/preference/Preference;

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    .line 1048
    iget-boolean v0, p1, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    .line 1049
    iput-boolean v1, p1, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a:Z

    .line 1050
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->notifyChanged()V

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsSummary;->e()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->c(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$uNxWm5i-X90vEyl-jHcm-E-W18M;-><init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/android/settings/applications/ProcessStatsSummary;)V

    .line 1055
    iput-object v0, p1, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->c:Landroid/view/View$OnClickListener;

    .line 95
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->refreshUi(Lcom/android/settings/applications/ProcessStatsSummary;)Z

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public getPreferenceResId(I)I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f15005f

    return p1
.end method

.method public synthetic lambda$displayPreference$1$ProcessStatsSummaryFeature(Lcom/android/settings/applications/ProcessStatsSummary;Landroid/view/View;)V
    .locals 4

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 82
    new-instance v1, Lcom/color/support/widget/popupwindow/PopupListItem;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcessStatsSummary;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 86
    new-instance p2, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;

    invoke-direct {p2, p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$HsTI0XVZ-0iRUN0tqe2QdL6feO8;-><init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsSummary;)V

    invoke-virtual {v0, p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    invoke-virtual {v0, v2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    .line 2060
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$null$0$ProcessStatsSummaryFeature(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsSummary;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    .line 90
    :cond_0
    invoke-virtual {p0, p5, p2}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsSummary;)V

    return-void
.end method

.method public synthetic lambda$null$2$ProcessStatsSummaryFeature(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;Lcom/android/settings/applications/ProcessStatsSummary;)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    iget-object v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->b:Landroid/text/format/Formatter$BytesResult;

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    iget-object v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->b:Landroid/text/format/Formatter$BytesResult;

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    iget v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->f:F

    iget v2, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a(FF)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mPerformance:Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mTotalMemory:Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mAverageUsed:Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mFree:Landroidx/preference/Preference;

    iget-object p1, p1, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsSummary;->e()I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsSummary;->f()Lcom/android/settings/applications/v;

    move-result-object v0

    .line 1137
    iget-object v0, v0, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mAppListPreference:Landroidx/preference/Preference;

    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const p1, 0x7f10002d

    .line 155
    invoke-virtual {p2, p1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$refreshUIAsyn$3$ProcessStatsSummaryFeature(Lcom/android/settings/applications/ProcessStatsSummary;ILandroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsSummary;->f()Lcom/android/settings/applications/v;

    move-result-object v3

    .line 118
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->d()[J

    move-result-object v4

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/applications/v;->a(J)V

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " positon "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->d()[J

    move-result-object v5

    aget-wide v6, v5, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "xhc"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v1, v3, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 121
    iget-wide v3, v1, Lcom/android/settings/applications/v$a;->a:D

    .line 122
    iget-wide v5, v1, Lcom/android/settings/applications/v$a;->c:D

    .line 123
    iget-wide v7, v1, Lcom/android/settings/applications/v$a;->b:D

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v9, v3

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    double-to-long v5, v5

    .line 126
    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    double-to-long v13, v7

    .line 127
    invoke-static {v2, v13, v14}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0300c8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsSummary;->f()Lcom/android/settings/applications/v;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/applications/v;->a()I

    move-result v14

    if-ltz v14, :cond_0

    .line 131
    array-length v15, v13

    sub-int/2addr v15, v11

    if-ge v14, v15, :cond_0

    .line 132
    aget-object v11, v13, v14

    goto :goto_0

    .line 134
    :cond_0
    array-length v14, v13

    sub-int/2addr v14, v11

    aget-object v11, v13, v14

    :goto_0
    add-double/2addr v7, v3

    div-double/2addr v3, v7

    double-to-float v3, v3

    .line 137
    new-instance v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;

    invoke-direct {v4, v0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;-><init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;)V

    .line 138
    iput-object v1, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->b:Landroid/text/format/Formatter$BytesResult;

    .line 139
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->a:Ljava/lang/String;

    .line 140
    iput-object v12, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->c:Ljava/lang/String;

    .line 141
    iput-object v2, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->d:Ljava/lang/String;

    .line 142
    iput v3, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->f:F

    .line 143
    invoke-static {v9, v10, v5, v6}, Lcom/android/settings/m;->a(JJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;->e:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$40t0XqxFGx5nb0DMeAyYK2KqcxI;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v4, v2}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$40t0XqxFGx5nb0DMeAyYK2KqcxI;-><init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature$a;Lcom/android/settings/applications/ProcessStatsSummary;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsSummary;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->a(I)V

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->mSummaryPref:Lcom/coloros/settings/widget/preference/ColorSummaryPreference;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsSummary;->c()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->c(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ProcessStatsSummaryFeature$qjdroV3QYdEgOt1MT71OmWDdXgY;-><init>(Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;Lcom/android/settings/applications/ProcessStatsSummary;ILandroid/content/Context;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public refreshUi(Lcom/android/settings/applications/ProcessStatsSummary;)Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsSummary;)V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;->isEnabled()Z

    move-result p1

    return p1
.end method
