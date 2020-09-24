.class public Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorSimToolKitPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_COMPLEX_CATEGORY:Ljava/lang/String; = "complex_category"

.field public static final KEY_STK_ENTRANCE:Ljava/lang/String; = "sim_toolkit_settings"

.field private static final TAG:Ljava/lang/String; = "ColorSimToolKitPreferenceController"


# instance fields
.field private mComplexCategory:Landroidx/preference/PreferenceCategory;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSimStateReceiver:Lcom/coloros/settings/receiver/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sim_toolkit_settings"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->updateStkPrefState()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private configStk()V
    .locals 3

    .line 144
    new-instance v0, Lcom/coloros/settings/receiver/a;

    invoke-direct {v0}, Lcom/coloros/settings/receiver/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)V

    .line 1107
    iput-object v1, v0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.SUBINFO_STATE_CHANGE"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/receiver/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private updateStkPrefState()V
    .locals 3

    .line 171
    new-instance v0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "complex_category"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 76
    invoke-static {}, Lcom/coloros/settings/utils/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->R(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 92
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sim_toolkit_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->W(Landroid/content/Context;)Z

    move-result p1

    .line 99
    sget-object v2, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "airplaneMode is "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120133

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1, v2}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v2

    :goto_1
    if-nez p1, :cond_5

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120f7d

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    return v1

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->N(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1214cb

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->configStk()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->updateStkPrefState()V

    return-void
.end method
