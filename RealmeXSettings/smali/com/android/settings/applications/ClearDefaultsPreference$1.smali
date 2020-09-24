.class final Lcom/android/settings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ClearDefaultsPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceViewHolder;

.field final synthetic b:Lcom/android/settings/applications/ClearDefaultsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->a:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->c(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->c(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    sget-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->a:Ljava/lang/String;

    const-string v1, "mUsbManager.clearDefaults"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->d(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->b(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->a:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a00be

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->b:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method
