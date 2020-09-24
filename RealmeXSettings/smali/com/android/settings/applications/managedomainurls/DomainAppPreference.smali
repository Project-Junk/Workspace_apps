.class public Lcom/android/settings/applications/managedomainurls/DomainAppPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "DomainAppPreference.java"


# instance fields
.field final a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/util/IconDrawableFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/IconDrawableFactory;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->c:Landroid/util/IconDrawableFactory;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->b:Landroid/content/pm/PackageManager;

    .line 41
    iput-object p3, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 42
    iget-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->b:Landroid/content/pm/PackageManager;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f120851

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->b:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120852

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120853

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->c:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
