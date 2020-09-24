.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;
.super Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.source "ColorDeviceInfoGridFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$-s-_92PvdetxEF4JHrWe4IvG-Fk;->INSTANCE:Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$-s-_92PvdetxEF4JHrWe4IvG-Fk;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 255
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    .line 250
    new-instance p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$a;-><init>(Lcom/android/settings/dashboard/f;)V

    return-object p0
.end method

.method public static synthetic lambda$-s-_92PvdetxEF4JHrWe4IvG-Fk(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1152
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/c;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/i;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/o;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v2, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;

    const-string v3, "firmware_version"

    invoke-direct {v2, p1, v3}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/b;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/j;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1167
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    if-eqz v0, :cond_2

    .line 1171
    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1173
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v2, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v3, "camera_info"

    invoke-direct {v0, p1, v3, v2}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 2146
    iput-boolean v2, v0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 1181
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1178
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v3, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v4, "authentication_info"

    invoke-direct {v0, p1, v4, v3}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 2156
    iput-boolean v3, v0, Lcom/coloros/settings/feature/controller/b$a;->c:Z

    .line 1185
    sget-boolean v4, Lcom/coloros/settings/a;->a:Z

    if-nez v4, :cond_3

    const-string v4, "ro.product.authentication"

    .line 2431
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    .line 3146
    :goto_0
    iput-boolean v4, v0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 1188
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v4, Lcom/coloros/settings/feature/controller/b$b;->b:I

    const-string v5, "regulatory_info"

    invoke-direct {v0, p1, v5, v4}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v4, "android.settings.SHOW_REGULATORY_INFO"

    .line 4141
    iput-object v4, v0, Lcom/coloros/settings/feature/controller/b$a;->a:Ljava/lang/String;

    .line 1194
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v4, Lcom/coloros/settings/feature/controller/b$b;->b:I

    const-string v5, "safety_info"

    invoke-direct {v0, p1, v5, v4}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v4, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    .line 5141
    iput-object v4, v0, Lcom/coloros/settings/feature/controller/b$a;->a:Ljava/lang/String;

    .line 1199
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1196
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    new-instance v0, Lcom/android/settings/deviceinfo/b;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/b;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v4, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v5, "network_access_license"

    invoke-direct {v0, p1, v5, v4}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean v4, Lcom/coloros/settings/a;->a:Z

    if-eqz v4, :cond_4

    .line 1208
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/d;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    .line 5146
    :goto_1
    iput-boolean v4, v0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 1209
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1206
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v4, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v5, "e_label"

    invoke-direct {v0, p1, v5, v4}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1213
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a(Landroid/content/Context;)Z

    move-result v4

    .line 6146
    iput-boolean v4, v0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 1214
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object v0

    .line 1211
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    new-instance v0, Lcom/coloros/settings/feature/controller/b$a;

    sget v4, Lcom/coloros/settings/feature/controller/b$b;->c:I

    const-string v5, "regulatory_info_above_coloros_six"

    invoke-direct {v0, p1, v5, v4}, Lcom/coloros/settings/feature/controller/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean v4, Lcom/coloros/settings/a;->a:Z

    if-eqz v4, :cond_5

    .line 1218
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v2, v3

    .line 7146
    :cond_5
    iput-boolean v2, v0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    .line 1219
    invoke-virtual {v0}, Lcom/coloros/settings/feature/controller/b$a;->a()Lcom/coloros/settings/feature/controller/b;

    move-result-object p1

    .line 1216
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    .line 86
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15004d

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 110
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 1

    .line 102
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/i;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 126
    invoke-super {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onResume()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
