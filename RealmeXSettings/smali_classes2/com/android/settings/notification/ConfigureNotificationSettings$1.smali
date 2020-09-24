.class final Lcom/android/settings/notification/ConfigureNotificationSettings$1;
.super Lcom/android/settings/notification/m;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->a(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/notification/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_default_ringtone"

    return-object v0
.end method
