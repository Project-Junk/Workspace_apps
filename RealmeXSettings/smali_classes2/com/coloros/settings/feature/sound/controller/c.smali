.class public final Lcom/coloros/settings/feature/sound/controller/c;
.super Lcom/android/settings/notification/m;
.source "ColorNotificationRingtonePreferenceController.java"

# interfaces
.implements Lcom/coloros/settings/feature/sound/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/notification/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_sound"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/c;->a(Landroidx/preference/Preference;)V

    return-void
.end method
