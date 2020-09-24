.class public Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "VrListenerSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final b:Ljava/lang/String; = "VrListenerSettings"

.field private static final c:Lcom/android/settings/utils/ManagedServiceSettings$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;-><init>()V

    sget-object v1, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->b:Ljava/lang/String;

    .line 1272
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a:Ljava/lang/String;

    const-string v1, "enabled_vr_listeners"

    .line 1277
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->b:Ljava/lang/String;

    const-string v1, "android.service.vr.VrListenerService"

    .line 1282
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->c:Ljava/lang/String;

    const-string v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    .line 1292
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->d:Ljava/lang/String;

    const-string/jumbo v1, "vr listener"

    .line 1297
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->e:Ljava/lang/String;

    const v1, 0x7f1218e1

    .line 1302
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->f:I

    const v1, 0x7f1218e0

    .line 1307
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->g:I

    const v1, 0x7f120e88

    .line 1312
    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->h:I

    .line 50
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->c:Lcom/android/settings/utils/ManagedServiceSettings$a;

    .line 95
    new-instance v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/utils/ManagedServiceSettings$a;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->c:Lcom/android/settings/utils/ManagedServiceSettings$a;

    return-object v0
.end method

.method public final a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 6

    .line 64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    const/16 v0, 0x304

    goto :goto_0

    :cond_0
    const/16 v0, 0x305

    :goto_0
    move v2, v0

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v1

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->getMetricsCategory()I

    move-result v3

    const/4 v5, 0x0

    .line 1079
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14e

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15013b

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
