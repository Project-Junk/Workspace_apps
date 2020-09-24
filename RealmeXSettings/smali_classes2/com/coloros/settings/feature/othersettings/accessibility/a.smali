.class public abstract Lcom/coloros/settings/feature/othersettings/accessibility/a;
.super Ljava/lang/Object;
.source "AccessibilityApkInstallWrapper.java"


# instance fields
.field protected a:Landroid/content/Context;

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/a$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/a$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/a;->b:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 50
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 3

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method
