.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final b:Lcom/android/settings/utils/ManagedServiceSettings$a;


# instance fields
.field private c:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;-><init>()V

    const-string v1, "NotificationAccessSettings"

    .line 2272
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a:Ljava/lang/String;

    const-string v1, "enabled_notification_listeners"

    .line 2277
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->b:Ljava/lang/String;

    const-string v1, "android.service.notification.NotificationListenerService"

    .line 2282
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->c:Ljava/lang/String;

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 2292
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->d:Ljava/lang/String;

    const-string v1, "notification listener"

    .line 2297
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->e:Ljava/lang/String;

    const v1, 0x7f120ec8

    .line 2302
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->f:I

    const v1, 0x7f120ec7

    .line 2307
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->g:I

    const v1, 0x7f120e7e

    .line 2312
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->h:I

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    .line 193
    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAccessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2

    .line 2142
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 2143
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    .line 145
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$k6vtt8BtqIcSCHs_Uz0r1uz3juE(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->b(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/utils/ManagedServiceSettings$a;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->b:Lcom/android/settings/utils/ManagedServiceSettings$a;

    return-object v0
.end method

.method public final a(Landroid/content/ComponentName;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4

    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const/16 v1, 0x308

    goto :goto_0

    :cond_0
    const/16 v1, 0x309

    .line 1137
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->a(Landroid/content/ComponentName;)Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 102
    :cond_1
    new-instance p3, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    .line 1157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1158
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "c"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    .line 1159
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p3, v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1161
    invoke-virtual {p3, p0, v1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "friendlydialog"

    invoke-virtual {p3, p1, p2}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    .line 107
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->a(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v0

    .line 111
    :cond_3
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 112
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->a(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "dialog"

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method

.method public final b(Landroid/content/ComponentName;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb3

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c6

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->onAttach(Landroid/content/Context;)V

    .line 86
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120eec

    const/4 v1, 0x0

    .line 72
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->finish()V

    :cond_0
    return-void
.end method
