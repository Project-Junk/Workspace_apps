.class public Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;
.super Lcom/android/settings/DateTimeSettings;
.source "ColorDateTimeSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public a:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$a;-><init>(B)V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;-><init>()V

    .line 65
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->c:Ljava/lang/Runnable;

    return-void
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

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "firstRun"

    const/4 v5, 0x0

    .line 107
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 109
    new-instance v4, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;

    invoke-direct {v4, v1, p0, v2}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V

    .line 112
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;

    invoke-direct {v1, p0, p0, v2}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorAutoTimePreferenceController;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;Lcom/android/settings/datetime/f;Z)V

    .line 115
    new-instance v2, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorWorldClockPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorWorldClockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150044

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/DateTimeSettings;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "city_timezone"

    .line 138
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onActivityResult zoneId = "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ColorDateTimeSettingFragment"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 142
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->b_()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/DateTimeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->b:Landroid/os/Handler;

    .line 76
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/DateTimeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 152
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.coloros.alarmclock.ADD_WORLD_CLOCK"

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "isFromSetting"

    .line 155
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x808000

    .line 156
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x2

    .line 158
    invoke-virtual {p0, v1, p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not exist in system!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDateTimeSettingFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/DateTimeSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
