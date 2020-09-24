.class public Lcom/android/settings/applications/ProcessStatsUiFeature;
.super Lcom/color/injector/adaptor/g;
.source "ProcessStatsUiFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_process_status_ui"
.end annotation


# static fields
.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_AVERAGE_HEAD:Ljava/lang/String; = "average_head"


# instance fields
.field private averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

.field private mAppListGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsUi;)Z
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "app_list"

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "average_head"

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    .line 3064
    iget-boolean v0, p1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    .line 3065
    iput-boolean v2, p1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    .line 3066
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->notifyChanged()V

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->c()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsUi;->d()I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/ProcessStatsUi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setOrder(I)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$MQeEkfqC1uM9lRardNdFmzu-BV0;-><init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/android/settings/applications/ProcessStatsUi;)V

    .line 3071
    iput-object v0, p1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->d:Landroid/view/View$OnClickListener;

    .line 108
    invoke-virtual {p0, v1, p2}, Lcom/android/settings/applications/ProcessStatsUiFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsUi;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f150060

    return p1
.end method

.method public synthetic lambda$displayPreference$1$ProcessStatsUiFeature(Lcom/android/settings/applications/ProcessStatsUi;Landroid/view/View;)V
    .locals 4

    .line 91
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->c()[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->c()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 93
    new-instance v1, Lcom/color/support/widget/popupwindow/PopupListItem;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->c()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/ProcessStatsUi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 97
    new-instance p2, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$WrdJG6GGJh9WfRmEMAawO8Qnt0A;-><init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsUi;)V

    invoke-virtual {v0, p2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    invoke-virtual {v0, v2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    .line 7076
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->c:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$null$0$ProcessStatsUiFeature(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Lcom/android/settings/applications/ProcessStatsUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    .line 102
    :cond_0
    invoke-virtual {p0, p5, p2}, Lcom/android/settings/applications/ProcessStatsUiFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsUi;)V

    return-void
.end method

.method public synthetic lambda$null$2$ProcessStatsUiFeature(Ljava/util/List;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ColorProcessStatsPreference;

    .line 160
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$refreshUIAsyn$3$ProcessStatsUiFeature(Lcom/android/settings/applications/ProcessStatsUi;IZ)V
    .locals 19

    move-object/from16 v0, p1

    .line 5270
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->f:Landroid/content/pm/PackageManager;

    .line 125
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->f()[J

    move-result-object v2

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsUi;->e()Lcom/android/settings/applications/v;

    move-result-object v3

    .line 127
    aget-wide v4, v2, p2

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/v;->a(J)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 6118
    iget-object v2, v3, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 6137
    iget-object v3, v3, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 133
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 134
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/x;

    .line 135
    invoke-virtual {v7}, Lcom/android/settings/applications/x;->a()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 138
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->g()Ljava/util/Comparator;

    move-result-object v4

    goto :goto_1

    .line 139
    :cond_1
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->h()Ljava/util/Comparator;

    move-result-object v4

    .line 138
    :goto_1
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p3, :cond_2

    .line 143
    iget-wide v6, v2, Lcom/android/settings/applications/v$a;->c:D

    goto :goto_2

    :cond_2
    iget-wide v6, v2, Lcom/android/settings/applications/v$a;->g:D

    iget-wide v8, v2, Lcom/android/settings/applications/v$a;->h:D

    mul-double/2addr v6, v8

    .line 146
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 147
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 148
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/x;

    .line 149
    new-instance v10, Lcom/android/settings/applications/ColorProcessStatsPreference;

    invoke-direct {v10, v0}, Lcom/android/settings/applications/ColorProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v9, v0, v1}, Lcom/android/settings/applications/x;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 151
    iget-wide v11, v2, Lcom/android/settings/applications/v$a;->h:D

    iget-wide v13, v2, Lcom/android/settings/applications/v$a;->j:D

    const/4 v15, 0x1

    xor-int/lit8 v16, p3, 0x1

    .line 7059
    iput-object v9, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->e:Lcom/android/settings/applications/x;

    .line 7060
    iget-object v5, v9, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v9, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v5, v9, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    :goto_4
    iput-object v5, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->b:Ljava/lang/String;

    .line 7061
    iget-object v5, v9, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4

    .line 7062
    iget-object v5, v9, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 7064
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->a:Landroid/graphics/drawable/Drawable;

    :goto_5
    move-object/from16 p2, v0

    move-object v5, v1

    .line 7066
    iget-wide v0, v9, Lcom/android/settings/applications/x;->j:D

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    iget-wide v2, v9, Lcom/android/settings/applications/x;->f:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    :goto_6
    if-eqz v16, :cond_7

    if-eqz v15, :cond_6

    .line 7067
    iget-wide v0, v9, Lcom/android/settings/applications/x;->j:D

    goto :goto_7

    :cond_6
    iget-wide v0, v9, Lcom/android/settings/applications/x;->f:D

    :goto_7
    mul-double/2addr v0, v11

    goto :goto_9

    :cond_7
    if-eqz v15, :cond_8

    iget-wide v0, v9, Lcom/android/settings/applications/x;->i:J

    goto :goto_8

    :cond_8
    iget-wide v0, v9, Lcom/android/settings/applications/x;->e:J

    :goto_8
    long-to-double v0, v0

    mul-double/2addr v0, v13

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    .line 7069
    :goto_9
    invoke-virtual {v10}, Lcom/android/settings/applications/ColorProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    double-to-long v11, v0

    invoke-static {v2, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->c:Ljava/lang/String;

    div-double/2addr v0, v6

    .line 7070
    iput-wide v0, v10, Lcom/android/settings/applications/ColorProcessStatsPreference;->d:D

    .line 7071
    invoke-virtual {v10}, Lcom/android/settings/applications/ColorProcessStatsPreference;->notifyChanged()V

    .line 152
    invoke-virtual {v10, v8}, Lcom/android/settings/applications/ColorProcessStatsPreference;->setOrder(I)V

    .line 153
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    .line 155
    :cond_9
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$g9GLxQJzWUob1iI6bsqtuu3bJsU;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$g9GLxQJzWUob1iI6bsqtuu3bJsU;-><init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Ljava/util/List;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;Lcom/android/settings/applications/ProcessStatsUi;)Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/android/settings/applications/ColorProcessStatsPreference;

    if-nez v0, :cond_1

    return v1

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsUi;->e()Lcom/android/settings/applications/v;

    move-result-object v0

    .line 67
    check-cast p1, Lcom/android/settings/applications/ColorProcessStatsPreference;

    .line 1118
    iget-object v0, v0, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 69
    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 2075
    iget-object p1, p1, Lcom/android/settings/applications/ColorProcessStatsPreference;->e:Lcom/android/settings/applications/x;

    .line 69
    invoke-static {p2, v0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->a(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/v$a;Lcom/android/settings/applications/x;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsUi;)V
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3266
    :cond_0
    iget-boolean v0, p2, Lcom/android/settings/applications/ProcessStatsUi;->g:Z

    .line 119
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    invoke-static {}, Lcom/android/settings/applications/ProcessStatsUi;->c()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {p2, v2}, Lcom/android/settings/applications/ProcessStatsUi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUiFeature;->averageMemoryPreference:Lcom/coloros/settings/widget/preference/AverageMemoryPreference;

    if-eqz v0, :cond_1

    const v2, 0x7f120d43

    goto :goto_0

    :cond_1
    const v2, 0x7f1202a0

    .line 4088
    :goto_0
    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5080
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5081
    iget-object v3, v1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5082
    iput-object v2, v1, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a:Ljava/lang/String;

    .line 5083
    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->notifyChanged()V

    .line 121
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/settings/applications/ProcessStatsUi;->a(I)V

    .line 123
    new-instance v1, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/settings/applications/-$$Lambda$ProcessStatsUiFeature$EkDbNjC8o9-j_V5xquTH7Pn2E9w;-><init>(Lcom/android/settings/applications/ProcessStatsUiFeature;Lcom/android/settings/applications/ProcessStatsUi;IZ)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public refreshUi(Lcom/android/settings/applications/ProcessStatsUi;)Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/ProcessStatsUiFeature;->refreshUIAsyn(ILcom/android/settings/applications/ProcessStatsUi;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUiFeature;->isEnabled()Z

    move-result p1

    return p1
.end method
