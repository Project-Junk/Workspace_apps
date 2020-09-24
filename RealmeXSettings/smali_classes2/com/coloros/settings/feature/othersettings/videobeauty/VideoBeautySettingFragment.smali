.class public Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VideoBeautySettingFragment.java"


# instance fields
.field private a:J

.field private b:J

.field private c:[I

.field private d:Lcom/color/support/preference/ColorPreferenceCategory;

.field private e:Lcom/color/support/preference/ColorPreferenceCategory;

.field private f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

.field private g:Lcom/google/b/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a:J

    .line 47
    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b:J

    const/16 v0, 0xb

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->c:[I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 51
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->e:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 52
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    .line 53
    new-instance v0, Lcom/google/b/f;

    invoke-direct {v0}, Lcom/google/b/f;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->g:Lcom/google/b/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    return-object p1

    .line 189
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;-><init>()V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->g:Lcom/google/b/f;

    const-class v2, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v1, p1, v2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSwitchByParam, e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoBeautySettingFragment"

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 196
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getIsOpen()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Ljava/lang/String;)V
    .locals 3

    .line 3177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3178
    iget-wide v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enter_timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    iget-wide v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_face_beauty"

    .line 3180
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    const-string p1, "video_call_beauty"

    const-string v1, "video_beauty_value"

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Ljava/lang/String;Z)V
    .locals 3

    .line 3168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3169
    iget-wide v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enter_timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    iget-wide v1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package"

    .line 3171
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const-string p2, "oper_result"

    .line 3172
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    const-string p1, "video_call_beauty"

    invoke-static {p0, p1, p1, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)[I
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->c:[I

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoBeautySettingFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500e9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "color_video_beauty_category"

    .line 63
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string p1, "color_video_beauty_level_category"

    .line 64
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->e:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a:J

    .line 1071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 1079
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1080
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 1081
    new-instance v4, Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 1083
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1084
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1201d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setAppName(Ljava/lang/String;)V

    .line 1087
    :cond_2
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1088
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oppo.video.beauty."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1090
    invoke-static {v5, v6}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1091
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 1092
    invoke-virtual {v4, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOrder(I)V

    .line 1094
    new-instance v5, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;

    invoke-direct {v5, p0, v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;)V

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1125
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1128
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/romupdate/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1130
    sget p1, Lcom/coloros/settings/romupdate/e;->a:I

    if-nez p1, :cond_4

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1}, Lcom/color/support/preference/ColorPreferenceCategory;->a()V

    return-void

    .line 1135
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d:Lcom/color/support/preference/ColorPreferenceCategory;

    const v0, 0x7f12155f

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->setTitle(I)V

    .line 1136
    new-instance p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    .line 1137
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->e(I)V

    .line 1138
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->d(I)V

    .line 1139
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->f(I)V

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const v0, 0x7f121601

    .line 2157
    iput v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->e:I

    .line 2158
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2159
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    iget v2, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2160
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const v0, 0x7f1215fb

    .line 2165
    iput v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->f:I

    .line 2166
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2167
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2168
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    :cond_6
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1144
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->setEnabled(Z)V

    .line 1147
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;-><init>(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1163
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->e:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->f:Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1164
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->e:Lcom/color/support/preference/ColorPreferenceCategory;

    const v0, 0x7f121878

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->setTitle(I)V

    return-void
.end method
