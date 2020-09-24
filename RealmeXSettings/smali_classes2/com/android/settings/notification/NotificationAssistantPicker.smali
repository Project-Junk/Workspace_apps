.class public Lcom/android/settings/notification/NotificationAssistantPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "NotificationAssistantPicker.java"

# interfaces
.implements Lcom/android/settingslib/applications/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAssistantPicker$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected c:Lcom/android/settings/notification/k;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected d:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/android/settingslib/applications/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/settings/notification/NotificationAssistantPicker$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAssistantPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAssistantPicker;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/widget/g;)Ljava/lang/CharSequence;
    .locals 4

    .line 108
    invoke-virtual {p1}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->d:Landroid/content/Context;

    const v1, 0x7f120e9f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/android/settingslib/widget/g;->a()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->i:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/android/settings/notification/k;->a(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/android/settings/notification/k;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x316

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c7

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->d:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/settings/notification/k;

    invoke-direct {v0}, Lcom/android/settings/notification/k;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->c:Lcom/android/settings/notification/k;

    .line 62
    new-instance v0, Lcom/android/settingslib/applications/e$a;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/e$a;-><init>(Landroid/content/Context;)V

    const-string p1, "NotiAssistantPicker"

    .line 1195
    iput-object p1, v0, Lcom/android/settingslib/applications/e$a;->a:Ljava/lang/String;

    const-string p1, "enabled_notification_assistant"

    .line 1200
    iput-object p1, v0, Lcom/android/settingslib/applications/e$a;->b:Ljava/lang/String;

    const-string p1, "android.service.notification.NotificationAssistantService"

    .line 1205
    iput-object p1, v0, Lcom/android/settingslib/applications/e$a;->c:Ljava/lang/String;

    const-string p1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    .line 1210
    iput-object p1, v0, Lcom/android/settingslib/applications/e$a;->d:Ljava/lang/String;

    const-string p1, "notification assistant"

    .line 1215
    iput-object p1, v0, Lcom/android/settingslib/applications/e$a;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/android/settingslib/applications/e$a;->a()Lcom/android/settingslib/applications/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->j:Lcom/android/settingslib/applications/e;

    .line 69
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->j:Lcom/android/settingslib/applications/e;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/e;->a(Lcom/android/settingslib/applications/e$b;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->j:Lcom/android/settingslib/applications/e;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/e;->a()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onDetach()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->j:Lcom/android/settingslib/applications/e;

    .line 2072
    iget-object v0, v0, Lcom/android/settingslib/applications/e;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServicesReloaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->a:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 120
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/settingslib/applications/b;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->a:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->h:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    new-instance p1, Lcom/android/settings/notification/NotificationAssistantPicker$a;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->d:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/notification/NotificationAssistantPicker$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->i:Ljava/util/List;

    return-void
.end method
