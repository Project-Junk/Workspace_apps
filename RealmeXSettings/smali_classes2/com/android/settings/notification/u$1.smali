.class final Lcom/android/settings/notification/u$1;
.super Ljava/lang/Object;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field final synthetic b:Landroid/app/NotificationChannel;

.field final synthetic c:Lcom/android/settings/notification/u;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/u;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/notification/u$1;->c:Lcom/android/settings/notification/u;

    iput-object p2, p0, Lcom/android/settings/notification/u$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iput-object p3, p0, Lcom/android/settings/notification/u$1;->b:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 131
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/u$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/u$1;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/u$1;->b:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/notification/u$1;->c:Lcom/android/settings/notification/u;

    invoke-static {v1}, Lcom/android/settings/notification/u;->b(Lcom/android/settings/notification/u;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120eb0

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/u$1;->c:Lcom/android/settings/notification/u;

    .line 139
    invoke-static {v0}, Lcom/android/settings/notification/u;->a(Lcom/android/settings/notification/u;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x635

    .line 140
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
